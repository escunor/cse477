CREATE TABLE IF NOT EXISTS `experiences` (
    `experience_id`   INT(11)       NOT NULL AUTO_INCREMENT COMMENT 'The experience id',
    `position_id`     INT(11)       NOT NULL COMMENT 'FK: The position id',
    `name`            VARCHAR(100)  NOT NULL COMMENT 'The name of the experience',
    `description`     TEXT          NOT NULL COMMENT 'Description of the experience',
    `hyperlink`       VARCHAR(500)  DEFAULT NULL COMMENT 'A link for more information',
    `start_date`      DATE          NOT NULL COMMENT 'The start date of the experience',
    `end_date`        DATE          DEFAULT NULL COMMENT 'The end date of the experience',
    PRIMARY KEY (`experience_id`),
    FOREIGN KEY (`position_id`) REFERENCES positions(`position_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT="Experiences within each position";