# Project Questions

Answer each one with SQL in DB Browser.
Try first. Hints are under each question.

## Example (already solved)

**How many calls were made in total?**

```sql
SELECT COUNT(*) FROM calls;
```

Answer: 67.

## 1. Which patients are due for an AWV?

A patient is due if their last AWV was more than 1 year ago.
Show first name, last name, age, and last AWV date.

Hint: you used `date('now', '-1 year')` in practice exercise 4.
The project "today" is 2026-10-06, so use
`date('2026-10-06', '-1 year')` to get the same answer every time.

## 2. What is the booking rate?

Booking rate = booked calls divided by all calls.
Show it as one number.

Hint: `SUM(CASE WHEN outcome = 'booked' THEN 1 ELSE 0 END)`
counts only the booked calls.

## 3. Which age group books the most?

Split patients into three groups: under 65, 65 to 74, and 75+.
For each group show: number of calls, number booked, booking rate.

Hint: `CASE WHEN age < 65 THEN 'under 65' ... END` makes the groups.
You need to join `calls` and `patients`.

## 4. Which weekday books the best?

For each weekday show: number of calls and number booked.
(Use the call_date.)

Hint: `strftime('%w', call_date)` gives the weekday as a number.
1 is Monday, 5 is Friday.

## 5. How many booked patients actually showed up?

Show the count of 'yes' and 'no' from the appointments table.
Then say the show rate in plain words in your README.

## 6. Who still needs a call?

List patients who are due for an AWV
AND have no 'booked' call yet.
Show first name, last name, and last AWV date.

Hint: this needs two tables and a NOT EXISTS check,
like practice exercise 5.

---

When all 6 are done, write your README:
3 to 5 short lines on what you found,
and 1 line on what you would try next.
