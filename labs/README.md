# Lab design — DevOps I

## How this maps to the course decisions

Per `internal/context.md` (private, not committed): **RH primary, FOSS
documented only**. Concretely, that means two different kinds of labs live
here, and they're graded differently:

| Type | Where the real work happens | What's actually graded |
|---|---|---|
| **RHA-linked labs** (Containers, Automation) | Red Hat Academy's own cloud lab environment (DO188, RH294) | **The grade comes from RHA lab completion**, assigned by the instructor from the RHA portal. GitHub Classroom is used for an *ungraded* practice submission (lint/build/run check on the artifact brought back) — fast feedback and a portfolio artifact, not the grade. |
| **GitHub-native labs** (CI/CD, Capstone) | Entirely in the student's own repo | A real, autograded build-and-run check — this *is* the grade, because there's no RHA equivalent to lean on |

Each numbered folder below is the seed for **one GitHub Classroom assignment
template repository** — when it's time to actually run the course, each
`labs/NN-xxx/` folder gets pushed to its own repo and turned into a
Classroom assignment from there. They live together here only for design
and version-history convenience.

## GitHub Free tier minute budget

We are **not** assuming GitHub Education/Team approval is in place. Every
workflow here is designed to run comfortably inside GitHub Free's **2,000
shared Actions minutes/month per organization** (the org that hosts the
Classroom, shared across every student repo in it). Rules applied
everywhere:

1. **`ubuntu-latest` only.** Windows runners cost 2x minutes, macOS costs
   10x. Never justified for these labs.
2. **`concurrency: cancel-in-progress: true`** on every workflow, keyed on
   `github.ref`. A student iterating rapidly (normal while debugging) won't
   burn minutes on superseded runs — only the latest push actually finishes.
3. **`timeout-minutes` capped low** on every job (2-5 min) so a hung
   container or infinite loop in a student's code can't quietly eat the
   org's monthly budget.
4. **RHA-linked labs are lint/syntax-only** (`hadolint`, `ansible-lint`,
   `--syntax-check`) — these run in single-digit seconds, not minutes,
   because the actual execution already happened on RHA's infrastructure.
5. **Real builds are reserved for the two labs that need them** (CI/CD,
   Capstone), and even there, Docker layer caching (`actions/cache` keyed on
   the Dockerfile/lockfile hash) keeps repeat runs fast.

Rough semester estimate for a ~30-student cohort, assuming students push
~10-15 times per lab while iterating: the two RHA-linked labs cost well
under 100 minutes total (lint-only); the CI/CD and Capstone labs are the
real cost, roughly 1,500-1,800 minutes total across the semester if run at
~1-2 min/run. That's tight if both land in the same calendar month, so:
apply for GitHub Education org benefits anyway (free, just takes
verification time) as headroom — but the design doesn't *depend* on it.

## Lab list

1. **`01-containers-podman/`** — Containers module, RHA-linked (DO188).
2. **`02-automation-ansible/`** — Automation module, RHA-linked (RH294).
3. **`03-cicd-pipeline/`** — CI/CD module, GitHub-native (RHA doesn't cover
   this topic at all).
4. **`04-capstone/`** — integration project, GitHub-native, spec only for
   now (fleshed out once the first three labs have run with a real cohort).

Every lab README follows the same skeleton (see `docs/adhd-friendly-design.md`):
objective → RHA pointer (if applicable) → FOSS-equivalent note → timebox →
explicit definition of done → how it's graded.

## `_template/`

Starting point for adding a new lab. Copy it, don't start from scratch —
the autograder workflow already has the minute-budget guardrails baked in.
