CREATE TABLE `_data_table1` (
    `id` VARCHAR(100) NOT NULL UNIQUE PRIMARY KEY COMMENT 'Unique identifier',
    `var1` VARCHAR(500) NOT NULL COMMENT 'Content for var1',
    `var2` INT(11) DEFAULT NULL COMMENT 'Content for var2',
    `var3` JSON COMMENT 'JSON object',
    `date_created` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp of creation',
    `deleted` TINYINT(1) DEFAULT 0 COMMENT '=0 if not deleted, =1 if deleted',
    INDEX `idx_deleted` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This is a table for storing information.';