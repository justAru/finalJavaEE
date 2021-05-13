
CREATE TABLE `todos` (
  id bigint(20) NOT NULL,
  description varchar(255) DEFAULT NULL,
  is_done bit(1) NOT NULL,
  target_date datetime(6) DEFAULT NULL,
  username varchar(255) DEFAULT NULL,
  title varchar(255) DEFAULT NULL
);

CREATE TABLE `users` (
  id int(3) NOT NULL,
  first_name varchar(20) DEFAULT NULL,
  last_name varchar(20) DEFAULT NULL,
  username varchar(250) DEFAULT NULL,
  password varchar(20) DEFAULT NULL
);

INSERT INTO `todos` (`id`, `description`, `is_done`, `target_date`, `username`, `title`) VALUES
(2, 'pass exam to 100%', b'1', '2021-05-12 00:00:00.000000', NULL, 'go to exam'),
(4, 'qwertyuiop', b'0', '2021-05-12 00:00:00.000000', NULL, 'smthing');

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`) VALUES
(1, 'Aruzhan', 'Demeubayeva', 'qwerty', 'qwerty'),
(2, 'Nargiz', 'Isaeva', 'nargiz', 'qwerty');



