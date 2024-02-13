CREATE TABLE "fish" (
  "id" integer PRIMARY KEY,
  "firstname" varchar,
  "id_familly" integer,
  "familly_place" integer,
  "id_rarity" integer,
  "id_serie" integer,
  "serie_place" integer,
  "strong" integer,
  "dexterity" integer,
  "intelligence" integer,
  "gived" integer,
  "promoted" integer,
  "lore" varchar
);

CREATE TABLE "familly" (
  "id" integer PRIMARY KEY,
  "name" varchar,
  "id_effect" integer,
  "nb_familly" integer
);

CREATE TABLE "nft" (
  "id" integer PRIMARY KEY,
  "id_fish" integer,
  "id_owner" integer,
  "distribution" varchar
);

CREATE TABLE "rarity" (
  "id" integer PRIMARY KEY,
  "star" integer,
  "tirage" integer
);

CREATE TABLE "effect" (
  "id" integer PRIMARY KEY,
  "name_effect" varchar,
  "rule_script" varchar,
  "rule_lit" varchar
);

CREATE TABLE "serie" (
  "id" integer PRIMARY KEY,
  "year" integer,
  "nb_in_year" integer,
  "serie_size" integer
);

CREATE TABLE "owner" (
  "id" integer PRIMARY KEY,
  "erc20" varchar
);

ALTER TABLE "fish" ADD FOREIGN KEY ("id_familly") REFERENCES "familly" ("id");

ALTER TABLE "fish" ADD FOREIGN KEY ("id_serie") REFERENCES "serie" ("id");

ALTER TABLE "familly" ADD FOREIGN KEY ("id_effect") REFERENCES "effect" ("id");

ALTER TABLE "fish" ADD FOREIGN KEY ("id_rarity") REFERENCES "rarity" ("id");

ALTER TABLE "nft" ADD FOREIGN KEY ("id_fish") REFERENCES "fish" ("id");

ALTER TABLE "nft" ADD FOREIGN KEY ("id_owner") REFERENCES "owner" ("id");
