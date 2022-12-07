SELECT * from Companies;

SELECT * from Assets;

SELECT Companies.ID, Companies.CNAME, Assets.ANAME
FROM Companies
INNER JOIN Assets ON Companies.CNAME=Assets.COMPANY;