CREATE TABLE departments (
  department_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Q2

ALTER TABLE people
ADD COLUMN department_id INT UNSIGNED AFTER email;

-- Q3

INSERT INTO departments (name)
  VALUES
  ('営業'),
  ('開発'),
  ('経理'),
  ('人事'),
  ('情報システム');

INSERT INTO people (name, email, department_id, age, gender)
  VALUES
  ('遠藤とおる', 'endo@gizumo.jp', 1, 35, 1),
  ('江本かおり', 'emoto@gizumo.jp', 1, 30, 2),
  ('榎本そうた', 'enomoto@gizumo.jp', 1, 24, 1),
  ('加藤あやね', 'kato@gizumo.jp', 2, 26, 2),
  ('狩野えいと', 'kano@gizumo.jp', 2, 29, 1),
  ('上田ことこ', 'kamita@gizumo.jp', 2, 24, 2),
  ('神田もとき', 'kanda@gizumo.jp', 2, 32, 1),
  ('毛谷あい', 'ketani@gizumo.jp', 3, 28, 2),
  ('神保こうた', 'jinbo@gizumo.jp', 4, 25, 1),
  ('城さくらこ', 'jo@gizumo.jp', 5, 28, 2);

INSERT INTO reports (person_id, content)
  VALUES
  (7, 'お疲れ様です。営業レッスン1が終わりました。'),
  (8, 'お疲れ様です。営業レッスン2が終わりました。'),
  (9, 'お疲れ様です。営業レッスン3が終わりました。'),
  (10, 'お疲れ様です。開発レッスン1が終わりました。'),
  (11, 'お疲れ様です。開発レッスン2が終わりました。'),
  (12, 'お疲れ様です。開発レッスン3が終わりました。'),
  (13, 'お疲れ様です。開発レッスン4が終わりました。'),
  (14, 'お疲れ様です。経理レッスン１が終わりました。'),
  (15, 'お疲れ様です。人事レッスン1が終わりました。'),
  (16, 'お疲れ様です。情報システムレッスン1が終わりました。');

  -- Q4

UPDATE people SET department_id = 1 WHERE person_id = 1;
UPDATE people SET department_id = 3 WHERE person_id = 2;
UPDATE people SET department_id = 4 WHERE person_id = 3;
UPDATE people SET department_id = 5 WHERE person_id = 4;
UPDATE people SET department_id = 5 WHERE person_id = 6;

-- Q5

SELECT name, age FROM people WHERE gender = 1 ORDER BY age DESC;