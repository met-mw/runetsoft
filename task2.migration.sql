CREATE TABLE `projects` (
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`description` TEXT NULL,
	`employee_id` BIGINT(20) UNSIGNED NOT NULL COMMENT 'Owner',
	`created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `name` (`name`),
	INDEX `employee_id` (`employee_id`),
	INDEX `created` (`created`),
	INDEX `employee_id_created` (`employee_id`, `created`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;

CREATE TABLE `project_employees` (
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`project_id` BIGINT(20) UNSIGNED NOT NULL,
	`employee_id` BIGINT(20) UNSIGNED NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `project_id_employee_id` (`project_id`, `employee_id`),
	INDEX `employee_id` (`employee_id`),
	INDEX `project_id` (`project_id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;

CREATE TABLE `employees` (
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`surname` VARCHAR(100) NOT NULL,
	`patronymic` VARCHAR(100) NULL DEFAULT NULL,
	`email` VARCHAR(255) NOT NULL,
	`post_id` BIGINT(20) UNSIGNED NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `post_id` (`post_id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;

CREATE TABLE `posts` (
	`id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`description` TEXT NULL,
	PRIMARY KEY (`id`),
	UNIQUE INDEX `name` (`name`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;
