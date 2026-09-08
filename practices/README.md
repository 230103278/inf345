# Practice sessions — design

Every lesson has a **1-hour in-class practice session** in addition to the
lecture (see `SYLLABUS.md` — 10% of the final grade, separate from the 5%
attendance line). Practice sessions are graded differently from labs:

| | Labs | Practice sessions |
|---|---|---|
| When | Take-home, days to finish | In-class, ~1 hour, synchronous |
| Where | RHA cloud labs (01/02) or GitHub (03/Capstone) | GitHub Classroom *(stopgap until the org is approved: fork + PR into this repo)* |
| Grading | RHA completion or a full build/run autograder | A fast, lightweight autograder — checks git history and file content, not builds |
| Purpose | Depth on one module's tool | Reinforce that lesson's specific skill, immediately |

## Why the autograder is deliberately lightweight

A practice session's autograder has to return a result **while the student
is still in the room** — a 5-minute Docker build is useless feedback if
class ends in 10 minutes. Every practice autograder in this repo:

- Never builds a container image or spins up infrastructure.
- Only checks git history (commit count, file diffs) and final file
  content — this runs in seconds, not minutes.
- Uses `workflow_dispatch` + `push` triggers with `concurrency:
  cancel-in-progress: true` (same minute-budget rules as labs — see
  `labs/README.md`), though at this cost profile a whole semester of
  practice sessions barely registers against the GitHub Free tier's
  2,000 minutes/month.

## Attendance signal

A practice session's final push, timestamped within the class window,
doubles as the attendance record for that lesson — a student who didn't
push didn't attend, from a grading standpoint. This is a *signal*, not
strict enforcement: if a student has a real reason for a late push,
that's a normal instructor judgment call, not something the autograder
polices.

## `_template/`

Starting point for a new practice session. Copy it, don't start from
scratch.
