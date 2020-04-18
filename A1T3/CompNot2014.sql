# save as CompNot2014.sql
SELECT LastName, FirstName, m.MemberID
FROM Member m, Entry e
WHERE m.MemberID = e.MemberID
AND e.Year <> 2014;
