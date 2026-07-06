# Interview Prep — Index

DevOps / Kubernetes / SRE interview materials, organized by topic.

> **Start here:** open [`index.html`](index.html) for a clickable, searchable index of every cheatsheet, PDF, and diagram. It needs no internet.

## 📁 Folder structure

### `kubernetes/`
Core Kubernetes cheatsheets and deep-dives.
- `k8s-cheatsheet.html` — general K8s reference
- `k8s-visual-cheatsheet.html` — visual/diagram-heavy reference
- `k8s-engine-cheatsheet.html` — engine internals
- `k8s-hierarchy.html` — object hierarchy
- `k8s-networking.html` — networking model
- `k8s-probes.html` — liveness / readiness / startup probes
- `k8s-deploy-flow.html` — deployment flow
- `k8s-upgrade-guide.html` — cluster upgrade guide
- `kcm-deepdive.html` — kube-controller-manager deep-dive
- `eks-cheatsheet.html` — AWS EKS specifics
- `helm-kustomize-cheatsheet.html` — Helm charts & Kustomize overlays
- `kubectl-apply-what-happens-next.pdf` — what happens after `kubectl apply`

### `gitops-cd/`
GitOps and continuous delivery tooling.
- `argocd-cheatsheet.html`
- `fluxcd-cheatsheet.html`
- `gitops-cheatsheet.html`
- `werf-cheatsheet.html`

### `iac-config/`
Infrastructure-as-code and configuration management.
- `terraform-trap-sheet.html` — common Terraform pitfalls
- `ansible-cheatsheet.html`

### `platform-misc/`
Cross-cutting platform topics.
- `service-mesh-cheatsheet.html`
- `kafka-keda-cheatsheet.html`
- `cgroups-cheatsheet.html`
- `senior-devops-trap-sheet.html` — cross-domain "gotchas" (K8s / Kafka / Linux / AWS)

### `OS-internals/`
Operating-system fundamentals underneath the platform.
- `syscalls-cheatsheet.html` — the user/kernel boundary (strace, seccomp, io_uring)
- `cpu-execution-cheatsheet.html` — fetch/decode/execute, pipeline, cache locality
- `cpu-scheduling-cheatsheet.html` — CFS/EEVDF, run queues, context switches, NUMA
- `process-lifecycle-cheatsheet.html` — fork / exec / exit, zombies, orphans, PID 1, COW
- `memory-management-cheatsheet.html` — virtual memory, paging, TLB, page cache, OOM

### `ci/`
Continuous integration pipelines.
- `ci-pipelines-cheatsheet.html` — GitHub Actions, GitLab CI, Jenkins & pipeline design

### `containers/`
Container images and runtimes.
- `docker-cheatsheet.html` — Dockerfiles, layers, multi-stage builds, OCI runtimes

### `cloud/`
Cloud platform core services.
- `aws-cheatsheet.html` — IAM, VPC, EC2, S3, RDS, ELB, Route 53

### `observability/`
Monitoring, tracing, and SRE practice.
- `observability-cheatsheet.html` — Prometheus, PromQL, Grafana, OpenTelemetry, alerting
- `sre-practices-cheatsheet.html` — SLI/SLO, error budgets, incident response, postmortems

### `linux/`
Practical Linux operations (kernel internals live in `OS-internals/`).
- `linux-ops-cheatsheet.html` — systemd, USE method, perf triage, networking, permissions

### `interview-qa/`
Long-form Q&A study guides.
- `devops-interview-160q.pdf` — 160+ DevOps questions (CI/CD, Docker, Terraform, monitoring, cloud)
- `devops-interview-150q.pdf` — 150+ DevOps questions (culture, CI/CD, SRE, deployments)
- `k8s-interview-qa.pdf` — Kubernetes fundamentals Q&A

### `diagrams/`
Mermaid (`.mermaid`) source diagrams, grouped by domain. Open [`diagrams/gallery.html`](diagrams/gallery.html) to view all of them rendered inline.
- **`kubernetes/`** — architecture, services, service networking, RBAC (×3), request journey
- **`linux/`** — boot, scheduler, process journeys, threaded process, container journey
- **`networking-security/`** — DHCP/DNS, VPN, SSL/TLS, SAML
- **`runtimes-apps/`** — compiler, Python/Java program journeys, simple & complex web apps

---
_Last organized: 2026-07-06_
