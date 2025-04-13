CREATE TABLE IF NOT EXISTS `skills` (
    `skill_id`        INT(11)       NOT NULL AUTO_INCREMENT COMMENT 'The skill id',
    `experience_id`   INT(11)       NOT NULL COMMENT 'FK: The experience id',
    `name`            VARCHAR(100)  NOT NULL COMMENT 'The name of the skill',
    `skill_level`     INT(2)        NOT NULL CHECK (`skill_level` BETWEEN 1 AND 10) COMMENT 'Skill level (1-10)',
    PRIMARY KEY (`skill_id`),
    FOREIGN KEY (`experience_id`) REFERENCES experiences(`experience_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT="Skills associated with experiences";