SELECT b.bname FROM boats b
JOIN reserves r ON  b.bid = r.bid
GROUP BY b.bname
HAVING COUNT(b.bid) < 3;
