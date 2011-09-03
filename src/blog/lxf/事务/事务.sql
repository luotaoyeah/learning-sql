BEGIN;

UPDATE accounts
   SET value = value - 50
 WHERE id = 1;

UPDATE accounts
   SET value = value + 50
 WHERE id = 3;

COMMIT;

-- --------------------------------------------------

BEGIN;

UPDATE accounts
   SET value = value - 50
 WHERE id = 1;

UPDATE accounts
   SET value = value + 50
 WHERE id = 3;

ROLLBACK;