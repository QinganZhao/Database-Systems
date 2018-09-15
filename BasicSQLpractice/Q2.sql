INSERT INTO sailors (sid, sname, rating, age)
VALUES ((SELECT MAX(sid) FROM sailors) + 1, 'Johannes', 10, 40);

INSERT INTO boats (bid, bname)
VALUES ((SELECT MAX(bid) FROM boats) + 1, 'Cayuga'), ((SELECT MAX(bid) FROM boats) + 2, 'Bebee');

INSERT INTO reserves (sid, bid, day)
VALUES ((SELECT MAX(sid) FROM sailors), (SELECT MAX(bid) FROM boats) - 1,'2018-09-01');
