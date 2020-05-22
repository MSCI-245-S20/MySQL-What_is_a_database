For the next set of examples, try doing a `source` on each of them by copying and pasting the code in the `sql-example.sql` file we created for you.

Select the _email_ column of the `basic_info` table and sort the results by email in _ascending_ order (remember that the `people` database must be in `USE`):

```
SELECT email FROM basic_info
ORDER BY email DESC;
```

Select the _country_ and _city_ rows of the `basic_info` table. Limit the results to 3 rows:

```
SELECT country,city FROM basic_info
LIMIT 3;
```

Get the records from the `names` table _where_ the _id_ is _greater than_ 5:

```
SELECT * FROM names
WHERE id > 5;
```

Get the records from the `names` table where the _surname_ is equal to 'Britt':

```
SELECT * FROM names
WHERE surname = 'Britt';
```

Get the records of the `basic_info` table _except_ the ones that are of the year 2014, order the results by _email_ in ascending order. 
Filter the results even more by getting only the _ids_ from 3 to 7:

```
SELECT * FROM basic_info
WHERE birthday NOT LIKE '2014%' 
AND id BETWEEN 3 AND 7
ORDER BY email ASC;
```

Get ready for a challenge in the next section.