# save as MemNoCoach.sql
USE Compbiol
SELECT LastName, FirstName 
FROM Member 
WHERE Coach is NULL;
