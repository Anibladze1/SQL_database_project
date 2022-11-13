CREATE TABLE `undergraduates` (
  `id` int PRIMARY KEY,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `Personal_ID` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `secondAdress` varchar(255),
  `houseNumber` varchar(255),
  `birthdate` date, NOT NULL
  `sex` boolean NOT NULL,
  `schools_id` int NOT NULL
);

CREATE TABLE `professors` (
  `id` int PRIMARY KEY,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `Personal_ID` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `secondAdress` varchar(255),
  `houseNumber` varchar(255),
  `birthdate` date NOT NULL,
  `sex` boolean NOT NULL,
  `bank_requisites` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `managers_id` int NOT NULL
);

CREATE TABLE `managers` (
  `id` int PRIMARY KEY,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `personal_ID` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `secondAdress` varchar(255),
  `houseNumber` varchar(255),
  `birthdate` date NOT NULL,
  `sex` boolean NOT NULL,
  `bank_requisites` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
);

CREATE TABLE `schools` (
  `id` int PRIMARY KEY,
  `school_name` varchar(255)
);

CREATE TABLE `subjects` (
  `id` int PRIMARY KEY,
  `subject_name` varchar(255) NOT NULL,
  `schools_id` int NOT NULL
);

CREATE TABLE `lecture_time` (
  `id` int PRIMARY KEY,
  `subjects_id` int NOT NULL,
  `time` varchar(255) NOT NULL,
  `weekday` varchar(255) NOT NULL
);

CREATE TABLE `subjects_of_undergraduates` (
  `id` int PRIMARY KEY,
  `undergraduates_id` int NOT NULL,
  `subjects_id` int NOT NULL
);

CREATE TABLE `subjects_of_professors` (
  `id` int PRIMARY KEY,
  `professors_id` int NOT NULL,
  `subjects_id` int NOT NULL
);

CREATE TABLE `managers_schools` (
  `id` int PRIMARY KEY,
  `managers_id` int NOT NULL,
  `schools_id` int NOT NULL
);

ALTER TABLE `undergraduates` ADD FOREIGN KEY (`schools_id`) REFERENCES `schools` (`id`);

ALTER TABLE `subjects` ADD FOREIGN KEY (`schools_id`) REFERENCES `schools` (`id`);

ALTER TABLE `lecture_time` ADD FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`);

ALTER TABLE `subjects_of_undergraduates` ADD FOREIGN KEY (`undergraduates_id`) REFERENCES `undergraduates` (`id`);

ALTER TABLE `subjects_of_undergraduates` ADD FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`);

ALTER TABLE `subjects_of_professors` ADD FOREIGN KEY (`professors_id`) REFERENCES `professors` (`id`);

ALTER TABLE `subjects_of_professors` ADD FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`);

ALTER TABLE `managers_schools` ADD FOREIGN KEY (`managers_id`) REFERENCES `managers` (`id`);

ALTER TABLE `managers_schools` ADD FOREIGN KEY (`schools_id`) REFERENCES `schools` (`id`);
