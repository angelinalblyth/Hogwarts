DROP TABLE students;
DROP TABLE houses;


CREATE TABLE houses(
  id serial4 PRIMARY KEY,
  name VARCHAR(255),
  founder VARCHAR(255),
  colours VARCHAR(255),
  animal VARCHAR(255),
  traits VARCHAR(255),
  teacher VARCHAR(255),
  ghost VARCHAR(255),
  common_room VARCHAR(255)
);


CREATE TABLE students(
  id serial4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  age INT4,
  house_id INT4 REFERENCES houses(id) ON DELETE CASCADE
);
