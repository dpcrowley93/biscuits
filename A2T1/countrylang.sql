USE compbiol
SELECT c.Name AS Country, l.Percentage, y.Name AS Capital
FROM country c, countrylanguage l, city y 
WHERE c.Code = l.CountryCode 
AND c.Capital = y.ID 
AND l.Language = "English" 
AND l.Percentage > 50;
