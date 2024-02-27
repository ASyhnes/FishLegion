
--faire correspond clef id
--d'une colone d'une table vers une autre colone d'une autre table

UPDATE fish
SET id_familly = (SELECT id FROM familly WHERE name = 'Madness')
WHERE firstname = 'Crazyfish';

DELETE FROM rarity
WHERE id = '15b3f31f-5bb1-4124-94bd-d13841aa25cc';
