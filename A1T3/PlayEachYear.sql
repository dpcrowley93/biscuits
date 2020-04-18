# save as PlayEachYear.sql
SELECT DISTINCT LastName, FirstName, e1.MemberID
FROM Member m, Entry e1, Entry e2, Entry e3
WHERE m.MemberID = e1.MemberID
AND e1.MemberID = e2.MemberID
AND e2.MemberID = e3.MemberID
AND e1.Year = 2013 AND e2.Year = 2014 AND e3.Year = 2015;

