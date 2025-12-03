CREATE TABLE cathedrals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(1024) NOT NULL,
    chief VARCHAR(1024) NOT NULL
);

ALTER TABLE groups
ADD COLUMN cathedral_id INTEGER;

INSERT INTO cathedrals (name, chief)
values
('Кафедра информационных технологий', 'Васильева Наталья Васильевна'),
('Математическая экономика и прикладная информатика', 'Матвеева Нюргуяна Николаевна');

select * from cathedrals;

UPDATE groups
SET cathedral_id = 1
WHERE short_name IN ('Б-ИВТ-25-1', 'Б-ИВТ-25-2');

UPDATE groups
SET cathedral_id = 2
WHERE short_name IN ('Б-ФИИТ-25', 'Б-ПИ-25-1');

SELECT * FROM groups
WHERE cathedral_id = 1;