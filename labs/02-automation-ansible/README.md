# Lab 02 — Configuration management with Ansible

**Objective:** write an idempotent Ansible playbook that provisions a small
service — prove you understand idempotence and roles, not just that you can
copy commands from a guided lab.

**Timebox:** ~45 min. If you're past 90, stop and ask in the course
discussion instead of pushing through alone.

**RHA lab:** Red Hat Academy **RH294** — *Red Hat Enterprise Linux
Automation with Ansible* (v9.0). **Your grade for this lab comes from
completing the RHA guided lab itself** on rha.ole.redhat.com — your
instructor assigns it from your RHA portal completion. This repo's
`submission/` is a separate, ungraded practice exercise: prove your
playbook works against a real (if small) target here too, for your own
portfolio and for the fast autograder feedback — it just doesn't count
toward the grade.

**FOSS equivalent:** Ansible itself is already fully open-source — nothing
to swap there. The only RH-specific part of RH294 is the *infrastructure*
the guided labs run against (RHA's hosted cloud VMs). Here, the autograder
targets a plain Docker container instead — same playbook, same modules,
just a free target you (or anyone, RHA seat or not) can spin up yourself.

## Quickstart

```bash
cd submission
ansible-lint site.yml
ansible-playbook --syntax-check site.yml
```

## Task

In `submission/site.yml`, write a playbook that, against the `web` host
group defined in `submission/inventory.ini`:
1. Installs `nginx`.
2. Deploys the provided `index.html` (in `submission/files/`) to nginx's
   web root.
3. Ensures the nginx service is started and enabled.
4. Is **idempotent** — running it twice produces zero changes on the
   second run.

## Definition of done

- [ ] `ansible-lint` reports no errors on `site.yml`
- [ ] `ansible-playbook --syntax-check` passes
- [ ] A first run against the test target reports changes; an immediate
      second run reports **zero** changed/failed tasks (idempotence)
- [ ] The deployed page is actually served by nginx on the test target
- [ ] Autograder passes on your final push (check the Actions tab)

## Grading

**Your grade comes from RHA RH294 lab completion**, not from this repo.
Same principle as Lab 01: the autograder here lints your playbook
(`ansible-lint`, `--syntax-check`), then proves idempotence and correctness
with a fast, disposable Docker-based target using Molecule — purely for
fast, ungraded feedback and your own portfolio. See
`.github/workflows/autograde.yml`.
