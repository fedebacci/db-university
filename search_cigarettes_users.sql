SELECT 
	`users`.`name` AS `user_name`,
	`cigarettes`.`user_id`,
    
	`cigarettes`.`id`,
    `cigarettes`.`timestamp`,
    `cigarettes`.`datetime`,
    `cigarettes`.`type`

FROM `users`

INNER JOIN `cigarettes`
ON `users`.`id` = `cigarettes`.`user_id`

WHERE `users`.`id` = 1
;