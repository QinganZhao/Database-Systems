SELECT s.sname, COUNT(r.bid) FROM sailors s
FULL OUTER JOIN reserves r ON s.sid = r.sid
GROUP BY s.sid
ORDER BY (COUNT(r.bid)) DESC;
