#save as query.sql
USE compbiol
SELECT a.gene, a.function, e.expr_value
FROM annotation AS a JOIN expression AS e ON a.gene = e.gene;
