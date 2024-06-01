-- 12.2.4 a batch as a unit of resolution

-- 同一个 batch 中的所有语句会作为一个整体进行解析,

DROP TABLE IF EXISTS hr.t1;

CREATE TABLE hr.t1
    (
        col1 INT,
    );

ALTER TABLE hr.t1 ADD col2 INT;

SELECT col1,
       col2
  FROM hr.t1;

DROP TABLE IF EXISTS hr.t1;

GO