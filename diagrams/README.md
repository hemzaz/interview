# Diagrams

Mermaid (`.mermaid`) source diagrams for interview prep, grouped by domain. Each diagram carries its own `%%{init}%%` theme block, so palettes are tailored per domain (Kubernetes blue, AWS orange, etc.).

## Fastest way to view: the gallery

Open **[`gallery.html`](gallery.html)** in a browser — it renders all diagrams inline, grouped by domain, with a live filter box and a per-diagram source toggle. No setup required.

> Rendering uses the Mermaid CDN. Offline, each diagram falls back to showing its raw source (a banner notes this).

To regenerate the gallery after adding or editing a `.mermaid` file, re-run the `build_gallery.py` generator that produced it, or paste the file into the [Mermaid Live Editor](https://mermaid.live/).

## Contents

### `kubernetes/`
`k8s_architecture` (control + data plane), `k8s_journey` (`kubectl apply` lifecycle),
`k8s_services`, `k8s_service_networking`, `k8s_rbac`, `k8s_rbac_binding`, `k8s_rbac_auth_flow`.

### `linux/`
`linux_boot` (BIOS → login), `linux_scheduler` (CFS), `linux_process_journey`,
`linux_process_w_threads_journey`, `container_linux_journey` (image → running process).

### `networking-security/`
`ssl` (TLS handshake), `saml` (auth/authz sequence), `vpn` (tunneling/encapsulation),
`dhcp_dns` (address config + name resolution).

### `runtimes-apps/`
`compiler` (source → executable), `python_program_journey`, `java_program_journey` (JVM),
`simple_webapp` (three-tier + AWS), `complex_web_app` (enterprise cloud).

## Viewing a single file

- **Gallery** — easiest, see above.
- **VS Code** — the [Markdown Preview Mermaid](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid) extension.
- **Live editor** — paste into <https://mermaid.live/>.
- **Render to PNG/SVG** — `npx @mermaid-js/mermaid-cli mmdc -i file.mermaid -o out.svg`.

---
_Personal interview-prep notes. The rendered index for the whole folder is `../index.html`._
