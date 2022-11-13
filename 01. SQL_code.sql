CREATE TABLE `undergraduates` (
  `id` int PRIMARY KEY,
  `fname` varchar(255),
  `lname` varchar(255),
  `Personal_ID` varchar(255),
  `phone_number` varchar(255),
  `email` varchar(255),
  `address` varchar(255),
  `secondAdress` varchar(255),
  `houseNumber` varchar(255),
  `birthdate` date,
  `sex` boolean,
  `schools_id` int
);

CREATE TABLE `proffessors` (
  `id` int PRIMARY KEY,
  `fname` varchar(255),
  `lname` varchar(255),
  `Personal_ID` varchar(255),
  `phone_number` varchar(255),
  `email` varchar(255),
  `address` varchar(255),
  `secondAdress` varchar(255),
  `houseNumber` varchar(255),
  `birthdate` date,
  `sex` boolean,
  `bank_requisites` varchar(255),
  `title` varchar(255),
  `managers_id` int
);

CREATE TABLE `managers` (
  `id` int PRIMARY KEY,
  `fname` varchar(255),
  `lname` varchar(255),
  `personal_ID` varchar(255),
  `phone_number` varchar(255),
  `email` varchar(255),
  `address` varchar(255),
  `secondAdress` varchar(255),
  `houseNumber` varchar(255),
  `birthdate` date,
  `sex` boolean,
  `bank_requisites` varchar(255),
  `title` varchar(255)
);

CREATE TABLE `schools` (
  `id` int PRIMARY KEY,
  `school_name` varchar(255)
);

CREATE TABLE `subjects` (
  `id` int PRIMARY KEY,
  `subject_name` varchar(255),
  `schools_id` int
);

CREATE TABLE `lecture_time` (
  `id` int PRIMARY KEY,
  `subjects_id` int,
  `time` varchar(255),
  `weekday` varchar(255)
);

CREATE TABLE `subjects_of_undergraduates` (
  `id` int PRIMARY KEY,
  `undergraduates_id` int,
  `subjects_id` int
);

CREATE TABLE `subjects_of_professors` (
  `id` int PRIMARY KEY,
  `proffessors_id` int,
  `subjects_id` int
);

CREATE TABLE `managers_schools` (
  `id` int PRIMARY KEY,
  `managers_id` int,
  `schools_id` int
);

ALTER TABLE `undergraduates` ADD FOREIGN KEY (`schools_id`) REFERENCES `schools` (`id`);

ALTER TABLE `subjects` ADD FOREIGN KEY (`schools_id`) REFERENCES `schools` (`id`);

ALTER TABLE `lecture_time` ADD FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`);

ALTER TABLE `subjects_of_undergraduates` ADD FOREIGN KEY (`undergraduates_id`) REFERENCES `undergraduates` (`id`);

ALTER TABLE `subjects_of_undergraduates` ADD FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`);

ALTER TABLE `subjects_of_professors` ADD FOREIGN KEY (`proffessors_id`) REFERENCES `proffessors` (`id`);

ALTER TABLE `subjects_of_professors` ADD FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`);

ALTER TABLE `managers_schools` ADD FOREIGN KEY (`managers_id`) REFERENCES `managers` (`id`);

ALTER TABLE `managers_schools` ADD FOREIGN KEY (`schools_id`) REFERENCES `schools` (`id`);
