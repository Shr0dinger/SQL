USE vk;

-- #2

SELECT from_user_id, 
(SELECT first_name FROM users WHERE id = messages.from_user_id) AS name, 
count(*) AS summ_messages
FROM messages
WHERE from_user_id IN 
(
		SELECT to_user_id FROM friend_requests WHERE from_user_id = 1 AND request_type = 
				(SELECT id FROM friend_requests_types WHERE name = 'accepted')
			UNION
		SELECT from_user_id FROM friend_requests WHERE to_user_id = 1 AND request_type = 
				(SELECT id FROM friend_requests_types WHERE name = 'accepted')
	)
 AND to_user_id = 9 GROUP BY (from_user_id) ORDER BY summ_messages DESC LIMIT 1;

-- #3

-- It works:
SELECT user_id, 
	   (SELECT first_name FROM users WHERE user_id = users.id) AS name,
	   count(like_type) AS like_summ
FROM posts_likes 
WHERE like_type > 0 
GROUP BY user_id;


-- How it should be but dont work:
SELECT user_id, 
	   (SELECT first_name FROM users WHERE user_id = users.id) AS name,
	   (SELECT TIMESTAMPDIFF(YEAR, birthday, NOW()) FROM profiles WHERE user_id = profiles.user_id) AS age,
	   count(like_type) AS like_summ
FROM posts_likes 
WHERE like_type > 0 
GROUP BY user_id
ORDER BY age LIMIT 0,10;

