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

SELECT count(*) AS total_likes_10_young 
FROM posts_likes 
WHERE post_id IN (SELECT id FROM posts WHERE user_id IN (SELECT * FROM (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS i)); 

-- #4

SELECT (SELECT gender FROM profiles WHERE profiles.user_id = posts_likes.user_id) AS gender, count(*) AS likes
FROM posts_likes
WHERE like_type = 1
GROUP BY gender
HAVING gender IN ('m', 'f')
ORDER BY likes DESC 
LIMIT 1;

-- #5

SELECT first_name,
(SELECT count(*) FROM posts_likes WHERE posts_likes.user_id = users.id) + 
(SELECT count(*) FROM messages WHERE messages.from_user_id = users.id) AS activ
FROM users
ORDER BY activ LIMIT 1;
