# save as dupmet.sql
USE compbiol
select metabolism
from annotation
group by metabolism
having count(*)>1;
