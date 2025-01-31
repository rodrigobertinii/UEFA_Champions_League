-- Chaves primarias não podem ter valores vazios e precisam ser valores unicos.
-- Alteração do estadio Red Bull que possui o mesmo nome mas são para times diferentes.
SELECT NAME, COUNT(*)
FROM STADIUMS
GROUP BY NAME
HAVING COUNT(*) > 1;

UPDATE STADIUMS 
SET NAME = 'Red Bull Arena - RB Leipzig'
WHERE NAME = 'Red Bull Arena' AND COUNTRY = 'Germany';

UPDATE STADIUMS 
SET NAME = 'Red Bull Arena - RB Salzburg'
WHERE NAME = 'Red Bull Arena' AND COUNTRY = 'Austria';

SELECT DISTINCT NAME
FROM STADIUMS

UPDATE TEAMS 
SET HOME_STADIUM = 'Red Bull Arena - RB Leipzig'
WHERE HOME_STADIUM = 'Red Bull Arena' AND TEAM_NAME = 'RB Leipzig';

UPDATE TEAMS 
SET HOME_STADIUM = 'Red Bull Arena - RB Salzburg'
WHERE HOME_STADIUM = 'Red Bull Arena' AND TEAM_NAME = 'RB Salzburg';

UPDATE TEAMS 
SET HOME_STADIUM = 'Red Bull Arena - RB Leipzig'
WHERE HOME_STADIUM = 'Red Bull Arena' AND TEAM_NAME = 'RB Leipzig';

UPDATE MATCHES 
SET STADIUM = 'Red Bull Arena - RB Salzburg'
WHERE STADIUM = 'Red Bull Arena' AND HOME_TEAM = 'RB Salzburg';

UPDATE MATCHES 
SET STADIUM = 'Red Bull Arena - RB Leipzig'
WHERE STADIUM = 'Red Bull Arena' AND HOME_TEAM = 'RB Leipzig';

