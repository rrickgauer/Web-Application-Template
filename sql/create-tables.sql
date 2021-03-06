DROP TABLE IF EXISTS
    Users,
    Songs;

CREATE TABLE Users (
    id INT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
    email CHAR(50) NOT NULL UNIQUE,
    password CHAR(255) NOT NULL,
    PRIMARY KEY (id)
) Engine = InnoDB;

CREATE TABLE Songs (
    id INT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL UNIQUE,
    title VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES Users(id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;