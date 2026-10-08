# My Answers

## 1. Which patients are due for an AWV?

```sql
SELECT first_name, last_name, age, last_awv_date
FROM patients
WHERE last_awv_date < date('2026-10-06', '-1 year');
```

**Answer:** 11 patients.

## 2. What is the booking rate?

```sql
SELECT CAST(SUM(CASE WHEN outcome = 'booked' THEN 1 ELSE 0 END) AS REAL) / COUNT(*) AS booking_rate
FROM calls;
```

**Answer:** 0.24 — 16 of 67 calls, about 24%.

## 3. Which age group books the most?

```sql
SELECT
  CASE WHEN age < 65 THEN 'under 65' WHEN age BETWEEN 65 AND 74 THEN '65 to 74' ELSE '75+' END AS age_group,
  COUNT(*) AS calls,
  SUM(CASE WHEN outcome = 'booked' THEN 1 ELSE 0 END) AS booked
FROM calls
JOIN patients ON calls.patient_id = patients.patient_id
GROUP BY age_group;
```

**Answer:** Ages 65–74 book most (10 of 33). Ages 75+ book least (1 of 14).

## 4. Which weekday books the best?

```sql
SELECT
  CASE strftime('%w', call_date)
    WHEN '1' THEN 'Monday' WHEN '2' THEN 'Tuesday' WHEN '3' THEN 'Wednesday'
    WHEN '4' THEN 'Thursday' WHEN '5' THEN 'Friday' ELSE 'other' END AS weekday,
  COUNT(*) AS calls,
  SUM(CASE WHEN outcome = 'booked' THEN 1 ELSE 0 END) AS booked
FROM calls
GROUP BY weekday;
```

**Answer:** Tuesday and Wednesday book best (4 each).

## 5. How many booked patients actually showed up?

```sql
SELECT showed, COUNT(*) AS count
FROM appointments
GROUP BY showed;
```

**Answer:** 12 showed, 4 did not — 75% show rate.

## 6. Who still needs a call?

```sql
SELECT first_name, last_name, last_awv_date
FROM patients p
WHERE p.last_awv_date < date('2026-10-06', '-1 year')
  AND NOT EXISTS (
    SELECT 1 FROM calls c
    WHERE c.patient_id = p.patient_id AND c.outcome = 'booked'
  );
```

**Answer:** 7 patients.
