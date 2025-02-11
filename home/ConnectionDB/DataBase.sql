Create database `Motors-inc`;
Use `Motors-inc`;

CREATE TABLE events (
  `idEvent` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descriptionEvent` text NOT NULL,
  `startEvent` datetime NOT NULL,
  `endEvent` datetime NOT NULL,
  `textColor` varchar(7) NOT NULL,
  `backgroundColor` varchar(7) NOT NULL
);


CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `username` varchar(99) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subarea` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
);

CREATE TABLE `passRateToday` (
  `model` varchar(80) NOT NULL,
  `total_production` int(11) NOT NULL,
  `fr` int(11) NOT NULL,
  `ok` int(11) NOT NULL,
  `fr_percentage` varchar(6) NOT NULL,
  `ok_percentage` varchar(6) NOT NULL
);

CREATE TABLE `equipmentInventory` (
  `name` varchar(20) NOT NULL,
  `hostName` varchar(20) NOT NULL,
  `ipAdress` varchar(15) NOT NULL,
  `classification` varchar(15) NOT NULL,
  `location` varchar(10) NOT NULL,
  `department` varchar(70) NOT NULL,
  `assignedTo` varchar(50) NOT NULL,
  `trademark` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `cpu` varchar(50) NOT NULL,
  `hddSize` varchar(15) NOT NULL,
  `ramSize` varchar(15) NOT NULL,
  `serviceTag` varchar(10) NOT NULL,
  `serialNumber` varchar(10) NOT NULL
);

CREATE TABLE `pcbsLocation` (
  `client` varchar(50),
  `models` varchar(50),
  `department` varchar(50),
  `expirationVerification` varchar(50),
  `status` boolean,
  `tipPcbTypele` varchar(50),
  `position` varchar(50)
);

CREATE TABLE `ictMaintenaince` (
  Title varchar(300) NOT NULL,
  Responsible varchar(100) NOT NULL,
  Activity varchar(300) NOT NULL,
  startDay datetime NOT NULL,
  limitDay datetime NOT NULL,
  Finished tinyint(1) NOT NULL
);

ALTER TABLE events ADD PRIMARY KEY (`idEvent`);
ALTER TABLE `user` ADD PRIMARY KEY (`idUser`);


ALTER TABLE events MODIFY idEvent int(11) NOT NULL AUTO_INCREMENT;

INSERT INTO events (idEvent, title, descriptionEvent, startEvent, endEvent, textColor, backgroundColor) VALUES
(1, 'Odette Franco', 'Desarrollar casos de uso', '2024-04-01 01:00:00', '2024-04-01 23:59:59', '#ffffff', '#17FF81'),
(2, 'Karla Trillo', 'Revisar documentación', '2024-04-02 00:00:01', '2024-04-03 23:59:59', '#ffffff', '#9B00FF');

INSERT INTO `passRateToday` (`model`, `total_production`, `fr`, `ok`, `fr_percentage`, `ok_percentage`) VALUES
('E3-10119E30052', 2964, 161, 2803, '2.43', '97.57'),
('E3-10129P17D21', 1988, 0, 1988, '0', '100'),
('E3-23406AAJX', 1213, 4, 1209, '0.33', '99.67'),
('E3-441-09-DB3B', 2596, 44, 2552, '1.69', '98.31'),
('E3-949502-31CB', 162, 0, 162, '0', '100'),
('E3-95018-154', 2304, 171, 2133, '7.42', '92.58'),
('E3-0341B510BX', 4356, 54, 4302, '1.24', '98.76'),
('E3-W343F01872', 20, 20, 0, '100', '0'),
('E3-W343F04274', 824, 96, 728, '11.65', '88.35'),
('E3-X001TL0382H', 2613, 32, 2581, '1.22', '98.78'),
('F3-X1T66895H7X', 1428, 44, 1384, '3.08', '96.92'),
('E3-X1T84791H17', 6, 0, 6, '0', '100');

INSERT INTO `user` (`idUser`, `username`, `name`, `subarea`, `role`, `phone`,`password`) VALUES
(1, 'OdetteF', 'Odette Franco', 'Tics', 'Scrum Master', '6641234567','OdetteF'),
(2, 'KarlaT', 'Karla Trillo', 'Tics', 'Product Owner', '6642345678','KarlaT'),
(3, 'CarlosL', 'Carlos Lozoya', 'Tics', 'Backend', '6643456789','CarlosL'),
(4, 'AlexisM', 'Alexis Martinez', 'Tics', 'Backend', '6644567890','AlexisM'),
(5, 'OmarM', 'Omar Mendez', 'Tics', 'Frontend', '6645678901','OmarM'),
(6, 'JulioM', 'Julio Martinez', 'Tics', 'Frontend', '6646789012','JulioM'),
(7, 'ReneB', 'Rene Beltran', 'Tics', 'Frontend', '6647890123','ReneB');

INSERT INTO equipmentInventory (name, hostName, ipAdress, classification, location, department, assignedTo, trademark, model, cpu, hddSize, ramSize, serviceTag, serialNumber)
VALUES ('A0130', 'A0130', '172.245.12', 'Desktop', 'Line 9', 'Programming', 'SMT', 'DELL', 'DELL', 'Intel Core i7', '1TB', '3GB', 'AAA', 'AAA');

INSERT INTO `pcbslocation`(`client`, `models`, `department`, `expirationVerification`, `status`, `tipPcbTypele`, `position`) VALUES ('BGM','E2-95018-154','AOI','24-01-2025','0','OK','Carro 2 POS #4');

INSERT INTO `ictMaintenaince`(`Title`, `Responsible`, `Activity`, `startDay`, `limitDay`, `Finished`) VALUES
('Fixtura ICTPB081903210074','Alexis Martinez','Mantenaince','2024-05-08 12:00:00','2024-05-09 12:00:00','1');

INSERT INTO `ictMaintenaince`(`Title`, `Responsible`, `Activity`, `startDay`, `limitDay`, `Finished`) VALUES
('Fixtura ICTPB081903210073','Carlos Lozoya','Mantenaince','2024-05-05 10:00:00','2024-05-06 11:00:00','0');
