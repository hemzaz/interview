#!/usr/bin/env bash
# Drift-guard for the interview-prep site. Read-only. Run: bash check.sh
# Verifies: (1) every index.html card points to a real file, (2) no content
# file is missing from index.html, (3) header counts match disk, (4) the whole
# site is still offline (no external script/link/font refs). Exit 1 on any drift.
set -uo pipefail
cd "$(dirname "$0")"
INDEX="index.html"
CONTENT_DIRS=(kubernetes gitops-cd iac-config platform-misc OS-internals interview-qa observability containers ci cloud linux)
fail=0

# 1. every p:"..." in index.html exists on disk
while IFS= read -r p; do
  [ -f "$p" ] || { echo "✗ BROKEN CARD: index.html references missing file: $p"; fail=1; }
done < <(grep -oE 'p:"[^"]+"' "$INDEX" | sed -E 's/^p:"(.*)"$/\1/')

# 2. every content .html (excl index/gallery) and .pdf is referenced in index.html
for d in "${CONTENT_DIRS[@]}"; do
  [ -d "$d" ] || continue
  while IFS= read -r f; do
    base="${f#./}"
    grep -q "p:\"$base\"" "$INDEX" || { echo "✗ ORPHAN: $base exists but is not in index.html GROUPS[]"; fail=1; }
  done < <(find "$d" -type f \( -name '*.html' -o -name '*.pdf' \))
done

# 3. header counts match disk
cheat=$(find "${CONTENT_DIRS[@]}" -type f -name '*.html' 2>/dev/null | wc -l | tr -d ' ')
pdf=$(find "${CONTENT_DIRS[@]}" -type f -name '*.pdf' 2>/dev/null | wc -l | tr -d ' ')
diag=$(find diagrams -type f -name '*.mermaid' 2>/dev/null | wc -l | tr -d ' ')
hdr=$(grep -oE '[0-9]+ cheatsheets · [0-9]+ PDFs · [0-9]+ diagrams' "$INDEX" | head -1)
want="$cheat cheatsheets · $pdf PDFs · $diag diagrams"
[ "$hdr" = "$want" ] || { echo "✗ COUNT DRIFT: header says '$hdr' but disk is '$want'"; fail=1; }

# 4. offline: no external script/link/font refs anywhere in the site
offenders=$(grep -rlE '(src="https?://|href="https?://|fonts\.googleapis|@import[^;]*https?://)' \
  "${CONTENT_DIRS[@]}" diagrams/gallery.html index.html 2>/dev/null || true)
if [ -n "$offenders" ]; then
  echo "✗ OFFLINE DRIFT: external resource refs found in:"; echo "$offenders" | sed 's/^/    /'; fail=1
fi

if [ "$fail" -eq 0 ]; then
  echo "✓ drift-guard OK — $cheat cheatsheets · $pdf PDFs · $diag diagrams, all cards resolve, fully offline."
fi
exit $fail
