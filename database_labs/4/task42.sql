-- Задание 2
-- Добавьте в таблицу Professor поле, содержащее его контактный телефон. 
-- Сделайте ограничение, позволяющее хранить номер телефона в формате: +7(XXX)XXX-XX-XX или 8(XXX)XXX-XX-XX

ALTER TABLE professor
ADD COLUMN phone_number VARCHAR(15),
ADD CONSTRAINT check_phone_number
CHECK (phone_number ~ '^(\+7|8)\(\d{3}\)\d{3}-\d{2}-\d{2}$');
