CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE fish (
  id UUID PRIMARY KEY,
  firstname VARCHAR,
  id_familly UUID,
  familly_place UUID,
  id_rarity UUID,
  id_serie UUID,
  serie_place INTEGER,
  strong INTEGER,
  dexterity INTEGER,
  intelligence INTEGER,
  gived INTEGER,
  promoted INTEGER,
  lore VARCHAR
);

CREATE TABLE familly (
  id UUID PRIMARY KEY,
  name VARCHAR,
  id_effect UUID,
  nb_familly INTEGER
);

CREATE TABLE nft (
  id UUID PRIMARY KEY,
  id_fish UUID,
  id_owner UUID,
  distribution VARCHAR
);

CREATE TABLE rarity (
  id UUID PRIMARY KEY,
  star INTEGER,
  tirage INTEGER
);

CREATE TABLE effect (
  id UUID PRIMARY KEY,
  name_effect VARCHAR,
  rule_script VARCHAR,
  rule_lit VARCHAR
);

CREATE TABLE serie (
  id UUID PRIMARY KEY,
  year INTEGER,
  nb_in_year INTEGER,
  serie_size INTEGER
);

CREATE TABLE owner (
  id UUID PRIMARY KEY,
  erc20 VARCHAR
);

ALTER TABLE fish ADD CONSTRAINT fk_fish_familly FOREIGN KEY (id_familly) REFERENCES familly(id);
ALTER TABLE fish ADD CONSTRAINT fk_fish_serie FOREIGN KEY (id_serie) REFERENCES serie(id);
ALTER TABLE familly ADD CONSTRAINT fk_familly_effect FOREIGN KEY (id_effect) REFERENCES effect(id);
ALTER TABLE fish ADD CONSTRAINT fk_fish_rarity FOREIGN KEY (id_rarity) REFERENCES rarity(id);
ALTER TABLE nft ADD CONSTRAINT fk_nft_fish FOREIGN KEY (id_fish) REFERENCES fish(id);
ALTER TABLE nft ADD CONSTRAINT fk_nft_owner FOREIGN KEY (id_owner) REFERENCES owner(id);


-- Pour la table familly
ALTER TABLE familly
ALTER COLUMN id SET DEFAULT uuid_generate_v4();

-- Pour la table rarity
ALTER TABLE rarity
ALTER COLUMN id SET DEFAULT uuid_generate_v4();

-- Pour la table effect
ALTER TABLE effect
ALTER COLUMN id SET DEFAULT uuid_generate_v4();

-- Pour la table serie
ALTER TABLE serie
ALTER COLUMN id SET DEFAULT uuid_generate_v4();

-- Pour la table owner
ALTER TABLE owner
ALTER COLUMN id SET DEFAULT uuid_generate_v4();
