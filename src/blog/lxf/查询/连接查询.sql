-- INNER JOIN
SELECT en.id, en.name, cn.name, cn.id
  FROM en
           INNER JOIN cn
           ON en.cn_id = cn.id;


-- LEFT OUTER JOIN
SELECT en.id, en.name, cn.name, cn.id
  FROM en
           LEFT OUTER JOIN cn
           ON en.cn_id = cn.id;


-- RIGHT OUTER JOIN
SELECT en.id, en.name, cn.name, cn.id
  FROM en
           RIGHT OUTER JOIN cn
           ON en.cn_id = cn.id;
