// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs

//type sql "dbml"

Table fish {
  id integer [primary key]
  firstname varchar
  id_familly integer
  familly_place integer
  id_rarity integer
  id_serie integer
  serie_place integer
  strong integer
  dexterity integer
  intelligence integer
  gived integer
  promoted integer
  lore varchar
  //nombre d'émission total du poisson)
}

table familly {
  id integer [primary key]
  name varchar
  id_effect integer
  nb_familly integer
  //nombre de membre dans la famille
}

table nft {
  id integer [primary key]
  id_fish integer
  id_owner integer
  distribution varchar
  //distribution>on rentre "gived" "promot" ou "sell"
}

table rarity {
  id integer [primary key]
  star integer 
  tirage integer
  //nombre de membre dans la famille
}

table effect {
  id integer [primary key]
  name_effect varchar
  rule_script varchar
  //regles sous forme de script
  rule_lit varchar
  //regle au format litéraire
}


table serie {
  id integer [primary key]
  year integer
  nb_in_year integer
  serie_size integer
}



table owner {
  id integer [primary key]
  erc20 varchar 
}


Ref: "fish"."id_familly" > "familly"."id"

Ref: "serie"."id" < "fish"."id_serie"

Ref: "effect"."id" < "familly"."id_effect"




Ref: "fish"."id_rarity" > "rarity"."id"


Ref: "fish"."id" < "nft"."id_fish"

Ref: "nft"."id_owner" > "owner"."id"