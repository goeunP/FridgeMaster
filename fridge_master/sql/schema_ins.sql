\echo Emptying the FrigeMaster database. Deleting all tuples.

DELETE FROM publish;

--

DELETE FROM users;
DELETE FROM recipes;
DELETE FROM items;

--

\echo .
\echo
\echo Adding data:

INSERT INTO items(it_id, it_name ) 
	VALUES (1, 'milk')
	,(2, 'pasta')
	,(3,'butter')
	,(4, 'oil')
	,(5, 'sugar')
	,(6, 'chicken')
	,(7 ,'noodle')
	,(8, 'peanut')
	,(9, 'cream')
	,(10, 'egg')
	,(11, 'salt')
	,(12, 'flour')
	,(13, 'garlic')
	,(14,'paprika')
	,(15, 'pepper')
	,(16, 'olive')
	,(17, 'onion')
	,(18, 'tomato')
	,(19, 'ham')
	,(20, 'cheese')
	,(21,  'vinegar')
	,(22, 'grape')
	,(23, 'chocolate')
	,(25, 'carrot')
	,(26, 'soy sauce')
	,(27, 'sesame oil')
	,(28, 'chili')
	,(29, 'bean')
	,(30, 'pork')
	,(31, 'beef')
	,(32, 'bread')
;





\echo ..

INSERT INTO users(user_mail, user_password, user_name, user_fridge) 
	VALUES ('kch020924@gmail.com', 'kgw071012', 'Kim Chaehyun',1)
	,('vsh480@gmail.com', 'gewe777!', 'Emilly',2)
	,('dvs784@gmail.com', 'ghdsaoivh', 'Daniel',3)
	,('fes487@gmail.com', '456geaa', 'Melline',4)
	,('bbb177@gmail.com' ,'3435d', 'Goeun',5)
	,('qwq777@hanmail.com', 'eeeeeee7efddd', 'Kate',6)
	,('kch020924@naver.com', 'ch020924!', 'Chaehyun Kim',7)
	,('bha3444@gmail.com', 'cucumber', 'bananaa',8)
	,('kch020924@g.skku.edu', 'ch020924', 'CH_SKKU',9)
	,('yrah7@gmail.com', '2vjeeoo9**', 'Mc Donald',10)
	,('xrn172@naver.com', 'kgw071012', 'JJ',11)
	,('jee88888@gmail.com', 'ejeruu', 'Sybill',12)
	,('wwfdjf7@hanmail,com', '2efg!!', 'Gunwoo Kim',13)
	,('Gouen@gmail.com', 'jedjfhf', 'Gouen Park',14)
;

\echo ...


INSERT INTO recipes(re_id, re_name,re_step, re_minute) 
	VALUES (1, 'chinese  candy',ARRAY['melt butterscotch chips in heavy saucepan over low heat', 'fold in peanuts and chinese noodles until coated', 'drop by tablespoon onto waxed paper', 'let stand in cool place until firm'], 15 )
	,(2, 'crispy crunchy  chicken', ARRAY['combine soup , egg and seasoned salt in a bowl and set aside', 'mix together flour , cornstarch , garlic powder , paprika , salt and pepper in a resealable plastic bag', 'dip chicken pieces into soup mixture and turn so as to coat all over', 'place chicken pieces in bag with flour mixture , seal bag and shake to coat chicken', 'place coated pieces of chicken on a platter and allow to set until the coating becomes doughy', 'heat oil in a deep fryer or in a skillet over medium heat , using enough oil to cover chicken pieces when fried', 'once chicken is doughy , fry pieces in oil for approx 5-8 minutes or until cooked through and juices run clear', 'drain pieces on paper towel and serve'],60)
	,(3, 'italian sandwich  pasta salad',  ARRAY['cook pasta and set aside', 'place onions , dill pickles , olives , water chestnuts , chives and peppers in a bowl', 'add oil , vinegar and spices', 'marinate for 15-20 minutes or so', 'add pasta , tomatoes , meat and cheese and toss lightly', 'serve cold'], 30   )
	,(4, 'mexican pasta',ARRAY['boil pasta as directed on package', 'drain and put in large serving bowl', 'mix picante sauce , milk , and cheese soup in a smaller bowl until creamy', 'heat in microwave until warm', 'mix sauce and pasta together and garnish with olives and jalepenos if desired'], 30 )
	,(5, 'sugared grapes',ARRAY['for one regular size bunch of grapes , 2 egg whites', 'brush grapes with egg whites and then sprinkle sugar to totaly cover grapes', 'freeze until needed the day of', 'the crystallized sugar makes the grapes crunchy and sweet !'], 15 )
	,(6, 'symphony  brownies',ARRAY['preheat oven to 350 degrees , or 325 degrees for glass baking dish', 'lightly grease the bottom only of an 11 x 7 inch baking pan', 'set aside', 'in a large mixing bowl prepare brownie mix according to directions on the package , using 2 eggs , 1 / 4 cup water and 1 / 2 cup oil', 'stir until smooth', 'spread half the batter evenly into prepared pan', 'unwrap candy bars and place them on top of the batter', 'top with remaining brownie batter', 'bake 40 minutes or until a toothpick inserted near center comes out with only a few moist crumbs clinging to it', 'remove pan from oven and let cool on wire rack before cutting into squares or other shapes'],60 )
	,(8, '1 000 artichoke hearts',  ARRAY['squeeze as much liquid as possible out of the artichoke hearts and drain them on paper towels', 'roll each heart in egg wash , and then roll in breadcrumbs until well-coated', 'deep fry for one to two minutes until lightly browned and slightly crispy', 'melt butter and garlic in a small , individual saut pan', 'saut hearts for two minutes in the garlic butter , basting each heart and taking care not to burn the butter or garlic', 'serve right in the pan with firm bread such as french or italian'],30)
	,(9, '1 asian noodle salad',ARRAY['bring a large pot of water to boil', 'add rice noodles and cook one minute , or until just tender', 'drain well , then rinse gently in cold water to cool the noodles', 'drain again and place in a large bowl with remaining ingredients', 'gently toss to combine', 'this salad can be made several hours in advance', 'keep refrigerated until needed'], 30)
	,(10, 'the man s  taco dip', ARRAY['mix cream cheese and sour cream until a soft mixture', 'add taco seasoning and bean dip', 'add 3 / 4 of cheese and pour into a baking dish', 'add remaining cheese on top', 'bake at 350 deg for 20 to 30 minutes or until golden brown', 'serve with torillla chips'], 60 )
	,(11, 'wait forever  pork chops', ARRAY['brown chops with a little salt and pepper', 'in baking dish , put pork chops on the bottom , mix rest of ingredients and pour on top of chops', 'bake at 300f degrees for 1 hour or 1 1 / 2 hours', '"hold"in warm oven until ready to serve , the longer the better !'], 240)
	,(12, '1 french onion soup', ARRAY['heat the butter and 2 tb olive oil in a large pan until melted', 'add the onions and sugar', 'cook over medium heat , stirring occasionally until they are "caramalized"', 'add the flour and stir for about 3 minutes', 'add the beef broth , and cook the soup over low-medium heat , partly covered , for about 45 minutes', 'add the sherry , cook for an additional 5 minutes', 'preheat the oven to 350 degrees', 'cut the french bread into 1" thick slices', 'bake the bread on an un-greased cookie sheet for 15 minutes', 'brush the bread with olive oil and rub with the cut side of the garlic', 'turn the bread slices over and bake an additional 15 minutes', 'ladle the soup into oven proof crocks , top each with a slice of bread and sprinkle on parmesan , romano and swiss cheese', 'bake the soup for about 10 minutes or until the cheese begins to brown'],240)
;

\echo ....

INSERT INTO publish(pub_id, pub_date, pub_publisher) 
	VALUES (1, '2004-08-11', 'kch020924@gmail.com' )
	,(2, '2022-09-01','vsh480@gmail.com')
	,(3, '2014-11-25', 'dvs784@gmail.com' )
	,(4, '2023-01-01', 'fes487@gmail.com')
	,(5, '2010-07-18', 'kch020924@gmail.com')
	,(6, '2005-12-12', 'bbb177@gmail.com' )
	,(8, '2016-05-30', 'kch020924@naver.com' )
	,(9, '2008-08-29', 'qwq777@hanmail.com')
	,(10, '2008-08-30',  'bha3444@gmail.com' )
	,(11, '2011-11-07', 'kch020924@g.skku.edu')
	,(12, '2018-07-07', 'yrah7@gmail.com')
	;

\echo .....

INSERT INTO recipe_ingredients (re_id, it_id)
	VALUES (1,7)
	,(1,8)
	,(2,6)
	,(2,9)
	,(2,10)
	,(2,11)
	,(2,12)
	,(2,13)
	,(2,14)
	,(2,15)
	,(2,4)
	,(3,2)
	,(3,16)
	,(3,17)
	,(3,15)
	,(3,18)
	,(3,19)
	,(3,20)
	,(3,4)
	,(3,21)
	,(3,13)
	,(4,2)
	,(4,20)
	,(4,1)
	,(4,16)
	,(5,22)
	,(5,10)
	,(5,5)
	,(6,10)
	,(6,4)
	,(6,23)
	,(8,10)
	,(8,4)
	,(8,3)
	,(8,13)
	,(9,7)
	,(9,25)
	,(9,17)
	,(9,13)
	,(9,26)
	,(9,27)
	,(9,21)
	,(9,28)
	,(9,29)
	,(10,20)
	,(10,29)
	,(11,30)
	,(11,5)
	,(12,3)
	,(12,4)
	,(12,17)
	,(12,5)
	,(12,12)
	,(12,32)
	,(12,20)
	,(12,13)	
;

\echo ......
	
INSERT INTO fridge(fr_id, fr_amount, it_id) 
	VALUES (1, 3,11 )
	,(1,  1, 30)
	,(3, 10 , 30)
	,(10, 1, 2)
	,(2,  2, 7)
	,(6,  8, 9)
	,(7,  1, 11)
	,(1,  15, 4)
	,(9,  9, 26)
	,(9,   1, 25)
	,(10,   1, 19)
	,(3,   25, 15)
	;

\echo ........
\echo done