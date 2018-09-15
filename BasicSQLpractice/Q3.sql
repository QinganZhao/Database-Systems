SELECT s.sname, COUNT(s.sid) 
FROM sailors s 
JOIN reserves r ON s.sid = r.sid
GROUP BY s.sid
HAVING COUNT(s.sid) >= 3;
