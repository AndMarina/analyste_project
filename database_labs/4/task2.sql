ALTER TABLE professor
ADD COLUMN phone varchar(30) check(phone ~* '^((8|\+7))\(\d{3}\)\d{3}-\d{2}-\d{2}$');
