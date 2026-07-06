# OS Internals

Interview cheatsheets on operating-system fundamentals — styled to match the rest of the Interview folder, and built using the Linux diagrams in `../diagrams/linux/`.

## Contents

- **syscalls-cheatsheet.html** — the user/kernel boundary: how a syscall traps into Ring 0, the x86-64 mechanism (registers, `syscall`/`sysret`), why they're expensive (mode switch, mitigations, batching with io_uring), the calls you'll be asked about, and observing them with `strace`/`seccomp`.

- **cpu-execution-cheatsheet.html** — how a core runs instructions: the fetch-decode-execute-mem-writeback cycle, pipelining and hazards (branch, data, out-of-order), and the memory hierarchy latency ladder (L1→L2→L3→RAM→SSD→disk) with locality and false-sharing.

- **cpu-scheduling-cheatsheet.html** — task states (R/S/D/Z), the `schedule()` loop and context-switch cost, CFS (vruntime, red-black tree, EEVDF), scheduling classes, and SMP/NUMA load balancing. Built from `linux_scheduler.mermaid`.

- **process-lifecycle-cheatsheet.html** — fork/exec/exit/wait, copy-on-write, zombies vs orphans (and the container PID-1 reaping gotcha), and threads vs processes with synchronization primitives. Built from `linux_process_journey.mermaid` and `linux_process_w_threads_journey.mermaid`.

## Related diagrams

Source mermaid diagrams live in `../diagrams/linux/`:
`linux_boot`, `linux_scheduler`, `linux_process_journey`, `linux_process_w_threads_journey`, `container_linux_journey`.

---
_Open any `.html` in a browser to view._
