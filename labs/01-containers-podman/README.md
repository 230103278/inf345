# Lab 01 — Containerize a small app with Podman

**Objective:** write a working Containerfile and prove you understand image
layers, ports, and running a container from your own image — not just
following steps in a guided lab.

**Timebox:** ~45 min. If you're past 90, stop and ask in the course
discussion instead of pushing through alone.

**RHA lab:** Red Hat Academy **DO188** — *OpenShift Development I:
Introduction to Containers with Podman* (v4.18). **Your grade for this lab
comes from completing the RHA guided lab itself** on rha.ole.redhat.com —
your instructor assigns it from your RHA portal completion. This repo's
`submission/` is a separate, ungraded practice exercise: bring back what
you built on RHA and prove it works here too, for your own portfolio and
for the fast autograder feedback — it just doesn't count toward the grade.

**FOSS equivalent:** everything here works identically with Docker if you
ever lose RHA access — `podman` and `podman-compose` are drop-in CLI
replacements for `docker` and `docker-compose`; the Containerfile syntax
you write is byte-for-byte a Dockerfile. Nothing you learn here is
Red-Hat-specific.

## Quickstart

```bash
# From this lab's folder:
podman build -t lab01-submission ./submission
podman run --rm -p 8080:8080 lab01-submission
curl localhost:8080   # should return the expected response
```

## Task

In `submission/`, write a `Containerfile` that:
1. Uses a minimal base image (prefer `-slim`/`-alpine` variants).
2. Copies in the provided `app/` source (already in `submission/app/`).
3. Installs only the dependencies actually needed to run it.
4. Exposes port `8080` and starts the app as the container's entrypoint.
5. Runs as a **non-root** user (a real Podman/OpenShift default you should
   internalize now, not bolt on later).

## Definition of done

- [ ] `podman build` succeeds with no errors
- [ ] `podman run` starts the container and it responds on port 8080
- [ ] `hadolint` reports no errors on your Containerfile (warnings are OK,
      but read them — don't silence them blindly)
- [ ] Container process does not run as root (`USER` set in the
      Containerfile)
- [ ] Autograder passes on your final push (check the Actions tab)

## Grading

**Your grade comes from RHA DO188 lab completion**, not from this repo.
The autograder here checks the artifact you bring back (lints your
Containerfile with `hadolint`, builds it, runs it, verifies it serves a
response and isn't running as root) purely for fast, ungraded feedback and
your own portfolio — see `.github/workflows/autograde.yml`.
