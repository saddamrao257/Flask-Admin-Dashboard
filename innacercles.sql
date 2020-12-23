--
-- File generated with SQLiteStudio v3.2.1 on Wed Dec 23 22:45:01 2020
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: call
CREATE TABLE call (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT);

-- Table: circles
CREATE TABLE circles (id INTEGER PRIMARY KEY ON CONFLICT ROLLBACK AUTOINCREMENT, title STRING (200) DEFAULT NULL, description STRING (2000) DEFAULT NULL, created_at DATETIME DEFAULT NULL, circle_type_id INTEGER, created_by INTEGER, updated_at DATETIME, updated_by INTEGER, status INT);
INSERT INTO circles (id, title, description, created_at, circle_type_id, created_by, updated_at, updated_by, status) VALUES (1, 'Test Dubai job', 'yes it is testing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO circles (id, title, description, created_at, circle_type_id, created_by, updated_at, updated_by, status) VALUES (2, 'Test Dubai job', 'yes it is testing3', NULL, NULL, NULL, NULL, NULL, NULL);

-- Table: circles_types
CREATE TABLE circles_types (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT);

-- Table: events
CREATE TABLE events (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT);

-- Table: files
CREATE TABLE files (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT, title VARCHAR DEFAULT NULL, description VARCHAR DEFAULT NULL);

-- Table: meetings
CREATE TABLE meetings (id INTEGER PRIMARY KEY ASC AUTOINCREMENT);

-- Table: messages
CREATE TABLE messages (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT);

-- Table: notes
CREATE TABLE notes (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT, title VARCHAR DEFAULT NULL, description VARCHAR DEFAULT NULL, circle_id INT DEFAULT NULL, notes_types VARCHAR DEFAULT NULL, created_at DATETIME DEFAULT NULL, created_by INT DEFAULT NULL, updated_at DATETIME DEFAULT NULL, updated_by INT DEFAULT NULL);

-- Table: notifications
CREATE TABLE notifications (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT);

-- Table: pages
CREATE TABLE pages (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT);

-- Table: payments
CREATE TABLE payments (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT DEFAULT NULL);

-- Table: role
CREATE TABLE role (
	id INTEGER NOT NULL, 
	name VARCHAR(80), 
	description VARCHAR(255), 
	PRIMARY KEY (id), 
	UNIQUE (name)
);
INSERT INTO role (id, name, description) VALUES (1, 'user', NULL);
INSERT INTO role (id, name, description) VALUES (2, 'superuser', NULL);

-- Table: roles_users
CREATE TABLE roles_users (
	user_id INTEGER, 
	role_id INTEGER, 
	FOREIGN KEY(user_id) REFERENCES user (id), 
	FOREIGN KEY(role_id) REFERENCES role (id)
);
INSERT INTO roles_users (user_id, role_id) VALUES (1, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (1, 2);
INSERT INTO roles_users (user_id, role_id) VALUES (3, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (4, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (5, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (6, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (7, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (8, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (9, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (10, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (11, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (12, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (13, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (14, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (15, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (16, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (17, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (18, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (19, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (20, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (21, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (22, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (23, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (24, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (25, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (26, 1);
INSERT INTO roles_users (user_id, role_id) VALUES (27, 1);

-- Table: settings
CREATE TABLE settings (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT);

-- Table: task
CREATE TABLE task (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT);

-- Table: task_assign
CREATE TABLE task_assign (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT);

-- Table: teams
CREATE TABLE teams (id INTEGER PRIMARY KEY ON CONFLICT ROLLBACK AUTOINCREMENT);

-- Table: user
CREATE TABLE user (
	id INTEGER NOT NULL, 
	first_name VARCHAR(255), 
	last_name VARCHAR(255), 
	email VARCHAR(255), 
	password VARCHAR(255), 
	active BOOLEAN, 
	confirmed_at DATETIME, 
	PRIMARY KEY (id), 
	UNIQUE (email), 
	CHECK (active IN (0, 1))
);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (1, 'Admin', 'Admin', 'admin', '$pbkdf2-sha512$25000$x7iXEgIgxFjrnVOKUcp5bw$M6soVeLYtvvnLXDCzrikbE0iFZEWYXTgNg0NdQcAklNxcUSGOqLq.evTfkdfzVpqGx2fyEwlhYfSUDxa6ro1hg', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (3, 'Amelia', 'Smith', 'amelia.smith@gmail.com', '$pbkdf2-sha512$25000$XQtBiFHKGeM8Z.y9d06p9Q$P.pTySCsXoUBxqzaaB37v3.hBgYGy2kV2RYXDBFiw7uroibuffP82uDRmuoB3lJPPNVZ3jL8/ePquMWWBWwLnA', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (4, 'Oliver', 'Patel', 'oliver.pat@example.com', '$pbkdf2-sha512$25000$gDDGmNO6dy4FgHAOgRCCEA$G0cW2V8c/YxVTfHSxzNos7Ob4VwymsLMG1TPpvux4Od/8FuDfwRcvH63/IoxMpvVIPx5oT44B4iMeufGcGGqOQ', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (5, 'Jack', 'Jones', 'jack.jones@example.com', '$pbkdf2-sha512$25000$aS0FwNj7n7MWIiREKCUEgA$mh.54xrRDloZFMYnNn17NGEVWQk3d3AapktfgVvj18wl4ZwPxoyjVDxQxzqNkLcbBtJsLim8je/C.pFXhVX/Zg', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (6, 'Isabella', 'Williams', 'isabella.williams@example.com', '$pbkdf2-sha512$25000$v9eaE.Jca23t3dt7T8mZsw$vb087qmCGt/ucHLi6KYQInUNfFNluc4euGsWsMHIvjPdO3/O2SYtT4fxlOxVgRwOHtI1N8kfdqPnt42eftFy0g', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (7, 'Charlie', 'Johnson', 'charlie.johnson@example.com', '$pbkdf2-sha512$25000$Z2xtDaGUUooRQsj5/7/3/g$pH2MCu3QHYOrgmLpZaCXGBa1BPkMedkQUZupoEo1SGOfLjyTeptHOvGuh0tjNmoir3I9YstMHGPN6FRO5n0Smg', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (8, 'Sophie', 'Taylor', 'sophie.taylor@example.com', '$pbkdf2-sha512$25000$eU/p3ftfa611DmGM0XpvTQ$iC5bGUH947IjrZscoDd.UZ2zcT/6AbSACQII4dR3/ctbk18CD.PNNqL88Rt5bFUUC0L1hHWGzLb4Fz5iSCCpmQ', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (9, 'Mia', 'Thomas', 'mia.thomas@example.com', '$pbkdf2-sha512$25000$nrPWmjNG6H1PSclZi3GutQ$DizjpgH80ND4lvbAVvy8f6DsuJBiMAZ4NM88GpiCwCR6c1G6vXeumWzcg/bESzCc7kbMt.isKPz4tb.TPA6NEw', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (10, 'Jacob', 'Roberts', 'jacob.roberts@example.com', '$pbkdf2-sha512$25000$q1Xq3ZuTMiaklLIWAgDAeA$4qKxDqVEhhaueSXIPmRTR.EgSByQ/JVO7tOD2c6fn7w8srQ90A.zFVZU9l3lCttzBxmtqtPuz0WXcnpzLdo7AQ', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (11, 'Thomas', 'Khan', 'thomas.khan@example.com', '$pbkdf2-sha512$25000$ZwzhnBPCuJeylpKSUoqxVg$cawLF780X64tjJt5WXaI1CySRtsEDcvdD81bdtiAsWTU9SOVBafH4YjQ8xxy1a.o8Gu4EjhgzegjjowAeO2LEA', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (12, 'Emily', 'Lewis', 'emily@example.com', '$pbkdf2-sha512$25000$03qPMebcu5cyZsw5J6Q0hg$F/bOvKdFtJIqw2JrNbjSEBdlMaVALx/lGZZawRMHfMoIqWxYTlk1enAU7IeUVn3KmjugIivrs1QnfaF3bfLhfA', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (13, 'Lily', 'Jackson', 'lily.jackson@example.com', '$pbkdf2-sha512$25000$05qTshZCaC2FcM65lzJmjA$0s3sbaNObnr4SEAthjP.TG/.29T7AzjCqQztrTSarTqezleLGJQbQw0sTFFdvEoyVgdRiECCCNvbvOemgLtxTA', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (14, 'Ava', 'Clarke', 'ava.clarke@example.com', '$pbkdf2-sha512$25000$iJGS0rr3HuPcu9faWyslJA$yj5OjoH.hlCj2Q5SfHSWSVeK.5u.BcUqyJbZBRvPIm0.cV2yIC462XspqczWT8t3W.e0C/2U8UY9UDN1X88FJQ', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (15, 'Isla', 'James', 'isla.james@example.com', '$pbkdf2-sha512$25000$DyHkvJey9l5Laa3V2nuPUQ$nkSmUlloMo.p3TBkpSRnhH9ENRPAFn0WNXDatIoxR0y8keMfsHThfKiFaVOY2vX2lMFLaz88D468HYiKuWQ36g', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (16, 'Alfie', 'Phillips', 'alfie.phillips@example.com', '$pbkdf2-sha512$25000$di7l3Nu7V6o1hjDGuHeOsQ$YjkzV2o/8BoBH92kgYN189RNEjsL2m36Mg0m6v7PSmUEFw3mwbRWWbVh7Kgpj2dhGLqbtZgZEj/LsLgir2ZHBQ', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (17, 'Olivia', 'Wilson', 'olivia.wilson@example.com', '$pbkdf2-sha512$25000$2bt3zpmzlnLufU8pJSTkXA$3tApVCXiWgKJamORPyWQzwObe9dZpFmSdnv6ZSAH8uTw5sNh3qqY4hYky8B1BKr.kMln7Xd2j825nzbBz7J3zg', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (18, 'Jessica', 'Ali', 'jessica.ali@example.com', '$pbkdf2-sha512$25000$NwYAgFAKwVjrHcP4nxOi1A$VGtfzVbrvU7tsGw6aj08ziXncNnFMysDWDeq0FLeWJm4sGpOfPNFv8DrakezqDKQWAwXD2xv2K.54a8GeMQl2g', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (19, 'Riley', 'Mason', 'riley.mason@example.com', '$pbkdf2-sha512$25000$Psd4b631fi8FgLC2ltKaEw$akIVpK1rR676Q6K4xLNx5NK2EG.ik6yNxLMejrIf2fZr47VhWQzN7EI0rpaswxmX4ZG4fZQNaz0svmk5By7kJA', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (20, 'William', 'Mitchell', 'william.mitchell@example.com', '$pbkdf2-sha512$25000$zjkn5JyzltI6x9j7X.tdqw$lN1PTg6YSMV5G8RVjEVV1b1PwhOELkgW2EZq1NaCC26DsU2tUgjXcrCoy8sYvw/KoCy7YhPDRtlhXDDLidfwqw', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (21, 'James', 'Rose', 'james.rose@example.com', '$pbkdf2-sha512$25000$0TpHaG1NibGWMuZ8z9mbEw$3j7z6rYxaOvw0XPpkuFJDfzCW5C1f6cdzXM51n2DIyx.EYwdcJwqN8bmIgwpmqb8pnWVxtWDbhSHq7NrMVdF9Q', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (22, 'Geoffrey', 'Davis', 'geoffrey.davis@example.com', '$pbkdf2-sha512$25000$TOl9D6G0VorRuhdCqJVSqg$aNASdN4t2dFmYCVBTjlh4h8NvIM9B5rAe0qn5a3oSoFHyQZEFtafE27iUsOfEKiXUzigEQ9map6v.wKYqR2x4Q', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (23, 'Lisa', 'Davies', 'lisa.davies@example.com', '$pbkdf2-sha512$25000$gFCKkfK.t7YWIkTIOQfAWA$5c5Eh6dcDlUPjVp8BnWS0wI/ump4meOUAN/7CX/NXEYd/w4jSYden6zi45Y681nsu9PVd9XmKoh/fw6rIzu/kA', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (24, 'Benjamin', 'Rodriguez', 'benjamin.rodriguez@example.com', '$pbkdf2-sha512$25000$xFjLuVdKCYHQ.v8f4zyHkA$4GpFPNsfCg6Q4Myb7Gvadvj.VKmJapcbIc.6EQzjmXfsP75HeDww2I61yFCmLrAvxYIUjFtPALe069sBJEncJg', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (25, 'Stacey', 'Cox', 'stacey.cox@example.com', '$pbkdf2-sha512$25000$vNdaS6mV0vo/Z2ytVYqxFg$v30mjSVGhPt6BE9marAI4LYpal9l1ajt3XiC2wZknq2YOkRyY2DWsBV1tf5YwE8xF7HZGiukqD6m4EO99jKQhA', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (26, 'Lucy', 'Alexander', 'lucy.alexander@example.com', '$pbkdf2-sha512$25000$p7RWSknJOYdwTkmplTLGeA$/MXvA2UgnkqqtVZEEdsmH5lfCB1c4C0UiQeMVpOoML0BAe1eWgRKhhwUFvqjUSmPQRnIv5YwelYDZc0coRQmkw', 1, NULL);
INSERT INTO user (id, first_name, last_name, email, password, active, confirmed_at) VALUES (27, NULL, NULL, 'dfhnghnm', NULL, 1, NULL);

-- Table: user_details
CREATE TABLE user_details (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT);

-- Table: videos
CREATE TABLE videos (id INTEGER PRIMARY KEY ASC ON CONFLICT ROLLBACK AUTOINCREMENT DEFAULT NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
