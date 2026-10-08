# AWV Outreach Tracker

A small SQL portfolio project about Annual Wellness Visit (AWV) outreach calls.

**All data in this project is fake.** It was made up for practice.
No real patients. No real data. Never.

## What this is

I make patient outreach calls every day at work — AWV reminders and
post-discharge follow-up. This project asks questions of the data behind
those calls: who is due for a visit, which groups book at the highest rate,
and who still needs a call.

## The data

SQLite database with three tables:

- `patients` — 40 fake patients (name, age, doctor, last AWV date)
- `calls` — 67 fake outreach calls (date, outcome: booked / no_answer / declined / wrong_number)
- `appointments` — visits booked from the calls (showed up or not)

## How to run it

1. Open `setup.sql` in [DB Browser for SQLite](https://sqlitebrowser.org/) (free) and run it. This builds the database.
2. Open `questions.md` and answer each question with SQL.
3. Write your queries and findings in `answers.md`.

## What I found

(3–5 short lines on the findings, plus 1 line on what I would try next —
filled in after answering the questions.)
