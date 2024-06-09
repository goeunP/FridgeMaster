\i schema_drop.sql

CREATE TABLE IF NOT EXISTS items (
    it_id INTEGER PRIMARY KEY,
    it_name VARCHAR(100) UNIQUE
);

CREATE TABLE IF NOT EXISTS users (
    user_mail VARCHAR(60) PRIMARY KEY,
    user_password VARCHAR(120),
    user_name VARCHAR(60),
    user_fridge INTEGER UNIQUE
);


CREATE TABLE IF NOT EXISTS recipes (
    re_id INTEGER PRIMARY KEY,
    re_name VARCHAR(120),
    re_step TEXT[],
    re_minute INTEGER
);

CREATE TABLE IF NOT EXISTS publish (
    pub_id INTEGER PRIMARY KEY,
    pub_date DATE,
    pub_publisher VARCHAR(60),
    CONSTRAINT fk_publish 
	FOREIGN KEY (pub_publisher) REFERENCES users(user_mail)
);
ALTER TABLE publish ADD CONSTRAINT fk_recipes_publisher 
FOREIGN KEY (pub_id) REFERENCES recipes(re_id)
;


CREATE TABLE IF NOT EXISTS recipe_ingredients (
    re_id INTEGER,
    it_id INTEGER,
    PRIMARY KEY (re_id, it_id),
    CONSTRAINT fk_recipe_ingredient_recipe 
	FOREIGN KEY (re_id) REFERENCES recipes(re_id),
    CONSTRAINT fk_recipe_ingredient_item 
	FOREIGN KEY (it_id) REFERENCES items(it_id)
);
ALTER TABLE recipe_ingredients ADD CONSTRAINT fk_recipe_ingredient_items
FOREIGN KEY (it_id) REFERENCES items(it_id)
;


CREATE TABLE IF NOT EXISTS fridge (
    fr_id INTEGER ,
    fr_amount INTEGER,
    it_id INTEGER,
    PRIMARY KEY (fr_id, it_id),
    CONSTRAINT fk_fridge_owner 
	FOREIGN KEY (fr_id) REFERENCES users(user_fridge),
    CONSTRAINT fk_fridge_item 
	FOREIGN KEY (it_id) REFERENCES items(it_id)
);


\i ddl-Users-add.sql
