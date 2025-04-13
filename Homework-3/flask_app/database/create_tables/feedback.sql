CREATE TABLE IF NOT EXISTS `feedback` (
    `comment_id`  INT(11)       NOT NULL AUTO_INCREMENT COMMENT 'The comment id',
    `name`        VARCHAR(100)  NOT NULL COMMENT 'The name of the commenter',
    `email`       VARCHAR(255)  NOT NULL COMMENT 'The email of the commenter',
    `comment`     TEXT          NOT NULL COMMENT 'The feedback comment',
    PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT="User feedback on the website";