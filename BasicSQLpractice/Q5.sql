SELECT s.sid FROM sailors s
JOIN reserves r ON s.sid = r.sid
WHERE r.day BETWEEN '2018-09-01' AND '2018-09-10'
GROUP BY s.sid
ORDER BY COUNT(s.sid) DESC
LIMIT 1;
