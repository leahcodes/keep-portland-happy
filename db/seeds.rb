User.create!([
  {email: "admin@admin.com", password: "password", user_name: "admin", admin: true, latitude: 45.5164479, longitude: -122.6347723, address: "30th and belmont, portland or", distance_to_travel: 5.0},
  {email: "user@user.com", password: "password",  admin: false, user_name: "user", latitude: 45.5207049, longitude: -122.6773971, address: "400 sw 6th, portland or", distance_to_travel: 5.0}
])
Eat.create!([
  {name: "Sweet Hereafter", category: "Tavern", address: "3326 SE Belmont St, Portland, OR 97214", phone: "N/A", website: "http://www.hereafterpdx.com", hours: "12pm - 2am", location: "SE", neighborhood: "Belmont", menu: "HAPPY HOUR\r\n4 PM ‘TIL 7 PM\r\nEVERYDAY\r\n$1 off entrees*\r\n$1 off select draft beers\r\n$1 off house red and house white wine\r\n$1 off well cocktails\r\nchips and salsa for $2*\r\n*no happy hour pricing for to-go orders\r\n\r\nCOCKTAILS:\r\nThe Pioneer $8\r\nGin, lime, simple syrup, topped with blood orange soda.\r\nServed in a 16oz mason jar.\r\n\r\nStockholm $8\r\nVodka, lemon, sugar and Cock-n-Bull ginger beer.\r\nServed in a pint.\r\n\r\nThe Company Sazerac $8\r\nBrandy, Overholt Rye, Absinthe, Angostura and\r\nPeychaud’s bitters. Served up with an orange zest.\r\n\r\nThe Long & Short of It $8\r\nApplejack, lemon, agave, cardamom bitters\r\nand Aardbeg scotch. Served over ice.\r\n\r\nMule Variation $8\r\nVodka, Aperol, lime and grapefruit bitters.\r\nTopped with Cock-n-Bull ginger beer in a pint.\r\n\r\nTequila Old Fashioned $8\r\nEl Jimador tequila, tarragon syrup,\r\nAngostura bitters and orange.\r\n\r\nChampagne #3 $8\r\nProsecco with Cocchi sweet vermouth and orange bitters.\r\n\r\nHereafter $8\r\nVodka, bourbon, lemon and iced tea.\r\nServed in a 32oz mason jar.\r\n\r\nNorth Williams $8\r\nOld Taylor bourbon, ginger ale and Blenheim’s\r\nginger beer. Served in a pint over ice\r\n\r\nPaloma $8\r\nEl Jimador tequila, lime, and grapefruit soda.\r\nServed over ice in a pint glass.\r\n\r\nBadlands $9\r\nRye whiskey, tequila, Cocchi Americano Rosa,\r\nAngostura and orange bitters. Served on a big cube.\r\n\r\nCompany Manhattan $9\r\nOverholt Rye, Applejack, Averna, with Angostura\r\nand Barrel Aged Bitters. Served up with a cherry.\r\n\r\nObscure Fashion $9\r\nAquavit, Pimms, sugar, lemon, and rhubarb bitters.\r\nServed on a big cube.\r\n\r\nPushover $10\r\nRye whiskey, Cocchi, Punt e Mes and Benedictine with\r\nAngostura and orange bitters. Served over ice.\r\n\r\nShow Pony $10\r\nCucumber infused Appleton Gold Rum, Maraschino liqueur,\r\npineapple and grapefruit juice, sugar, and\r\nHimalayan pink salt. Served up.\r\n\r\nFOOD:\r\n\r\nSTARTERS\r\n$4 Chips and Salsa * $5 Hummus and Baguette\r\n\r\n$5 Rosemary Almonds\r\n\r\n$5 Pretzel Plate - Pretzel knots served with housemade spicy beer mustard\r\nand miso-chive cheese.\r\n\r\n$8 Antipasto Platter - Sliced baguette, hummus, pickled veggies, miso chive\r\ncheese, rosemary almonds, and olives.\r\n\r\nENTREES\r\n$9 Jamaican Bowl - Jerk marinated tofu, coconut kale, black beans and\r\nbrown rice. Add avocado OR pineapple for $1.\r\n\r\n$9 Eastern Bowl - Nutritional yeast breaded tofu, broccoli, and brown rice\r\nwith a spicy ginger peanut sauce, topped with sesame seeds. Add avocado\r\nfor $1.\r\n\r\n$8 Thai Bowl – Spicy Thai style tofu with carrots, cabbage, peanuts,\r\nsprouts, scallions, and brown rice.\r\n\r\n$7 Precious Bowl – Coconut Kale, Black Beans, and Brown Rice. Add avocado\r\nOR pineapple for $1.\r\n\r\n$9 Hereafter Pretzel Burger – Field Roast Burger on a pretzel bun, with\r\nmiso-chive cheese, mustard, lettuce, onion, tomato and pickles. With chips\r\nand salsa.*\r\n\r\n$9 Blackened Tempeh Sandwich – Grilled Cajun seasoned tempeh, on\r\ntoasted ciabatta, miso mayo, spicy beer mustard, slaw, red onion, tomato,\r\nand pickles. With chips and salsa.*(gf)\r\n\r\n$9 Steve Martin -Jerk marinated tofu cutlets, onion, coleslaw, pineapple\r\nand miso mayo on ciabatta roll.\r\nWith chips and salsa*(gf)\r\n\r\n$9 Tofu Bahn Mi - Lemongrass marinated tofu cutlets with pickled carrots\r\nand radishes, jalapeños, cilantro, and miso mayo on a baguette. Served\r\nwith chips and salsa.*(gf)\r\n\r\n$9 Buffalo Sub - Buffalo marinated soy curls, miso-chive cheese, lettuce,\r\ntomato and ranch. With chips and salsa.*(gf)\r\n\r\n$8 Caprese Panini – Chao Cheese with tomatoes, basil, and a blasamic\r\nreduction served on grilled sourdough. With chips and salsa.*\r\n\r\nSIDES\r\n\r\npick three for $9\r\n$2 Brown Rice $4 Coconut Kale $4 Broccoli\r\n$3 Black Beans $3 Coleslaw $4 Tofu\r\nadd sauce or salsa for $.50\r\n*Sub side for $2\r\n(gf) Available as gluten-free rice bowl.\r\n50 cents added to all to-go orders.\r\n\r\nBOTTLES & CANS\r\n\r\nPBR (tall can) $2 * Tecate (tall can) $3\r\nOccidental Kolsch (tall can) $5\r\nCaldera Ashland Amber (12oz can) $4\r\nCascadia Ciderworkers United Dry Cider (tall can) $6\r\nMiller High Life $2 * Carta Blanca $3.5\r\nAnderson Valley Barney Flats Oatmeal Stout $4\r\nAnthem Cider $7 * Terminal Gravity IPA $4\r\nOmission Gluten Free Pale Ale $4\r\nBayern Pilsner $4 * Stiegl Lager $4\r\nDuchesse De Bourgogne $8\r\nStillwater Cellar Door Farmhouse Ale $6\r\nNon Alcoholic\r\nIzze Grapefruit Soda $3\r\nBlenheim’s Ginger Beer Soda $3\r\nCock ‘n’ Bull Ginger Beer Soda $3\r\nSanpellegrino Blood Orange Soda $2\r\nPlease place all orders at the bar.\r\n50 cents added to all to-go orders.\r\nPlease place all orders at the bar.\r\n50 cents added to all to-go orders.", profile_image_id: "27821", latitude: 45.5161634, longitude: -122.6303291, mon_happy_start: 16.0, mon_happy_end: 19.0, tues_happy_start: 16.0, tues_happy_end: 19.0, wed_happy_start: 16.0, wed_happy_end: 19.0, thur_happy_start: 16.0, thur_happy_end: 19.0, fri_happy_start: 16.0, fri_happy_end: 19.0, sat_happy_start: 16.0, sat_happy_end: 19.0, sun_happy_start: 16.0, sun_happy_end: 19.0, mon_open: 12.0, mon_close: 24.0, tues_open: 12.0, tues_close: 24.0, wed_open: 12.0, wed_close: 24.0, thur_open: 12.0, thur_close: 24.0, fri_open: 12.0, fri_close: 24.0, sat_open: 12.0, sat_close: 24.0, sun_open: 12.0, sun_close: 24.0, instagram_location_id: "878338111", average_rating: 4.0},
  {name: "Aalto Lounge", category: "Lounge", address: "3356 SE Belmont St, Portland, OR 97214", phone: "(503) 235-6041", website: "http://www.aaltolounge.com/", hours: "Open Daily 5PM - 2:30AM  Happy Hour 5PM - 7PM", location: "SE", neighborhood: "Belmont", menu: "HAPPY HOUR MENU\r\n\r\n5PM - 7PM Daily\r\n\r\nBehold our $2 Happy Hour menu. This promotion is for well-mannered, appropriately-tipping customers. Please enjoy responsibly and respectfully.\r\nCocktails\r\n$2\r\nSLOW BURN\r\nSerrano-infused vodka, pineapple, lemon juice. Served up.\r\n$2\r\nTHE DANDY\r\nCucumber-infused gin, lemon, lavender simple syrup. Served on the rocks.\r\n$2\r\nBELMONT JEWEL\r\nBourbon, lemon, pomegranate juice, and orange blossom water. Served on the rocks.\r\n$2\r\nGROWN UP JELLO SHOTS\r\nChoose Paloma or ask about our weekly flavor.\r\n* Our happy hour cocktails are available after 7PM for just $6.\r\nFood\r\n$2\r\nGRILLED CHEESE SANDWICH\r\nServed with tomato soup.\r\n$2\r\nOVEN-BAKED PRETZEL\r\nServed with cheese sauce.\r\n* Drink purchase is required for all happy hour food pricing.\r\nWine\r\n$10\r\nBOTTLE\r\nRotating red and white selection\r\nBeer Buckets\r\n$8\r\nMILLER HIGH LIFE\r\nFour Bottles\r\n$12\r\nWEIHENSTEPHANER HEFEWEIZEN\r\nFour Bottles\r\n$12\r\nPACIFICO W/ LIME\r\nFour Bottles\r\n* Beer bucket special is available all hours.", profile_image_id: "27825", latitude: 45.5161269, longitude: -122.6297729, mon_happy_start: 17.0, mon_happy_end: 19.0, tues_happy_start: 17.0, tues_happy_end: 19.0, wed_happy_start: 17.0, wed_happy_end: 19.0, thur_happy_start: 17.0, thur_happy_end: 19.0, fri_happy_start: 17.0, fri_happy_end: 19.0, sat_happy_start: 17.0, sat_happy_end: 19.0, sun_happy_start: 17.0, sun_happy_end: 19.0, mon_open: 17.0, mon_close: 24.0, tues_open: 17.0, tues_close: 24.0, wed_open: 17.0, wed_close: 24.0, thur_open: 17.0, thur_close: 24.0, fri_open: 17.0, fri_close: 24.0, sat_open: 17.0, sat_close: 24.0, sun_open: 17.0, sun_close: 24.0, instagram_location_id: "505310", average_rating: 3.0},
  {name: "Victoria Bar", category: "Bar", address: "4835 N Albina Ave, Portland, OR 97217", phone: "", website: "http://www.victoriapdx.com/", hours: "MONDAY – FRIDAY: 3PM – 2AM SATURDAY & SUNDAY: NOON – 2AM", location: "N", neighborhood: "NOPO", menu: "", profile_image_id: "27828", latitude: 45.5580381, longitude: -122.675244, mon_happy_start: 15.0, mon_happy_end: 18.0, tues_happy_start: 15.0, tues_happy_end: 18.0, wed_happy_start: 15.0, wed_happy_end: 18.0, thur_happy_start: 15.0, thur_happy_end: 18.0, fri_happy_start: 15.0, fri_happy_end: 18.0, sat_happy_start: 15.0, sat_happy_end: 18.0, sun_happy_start: 15.0, sun_happy_end: 18.0, mon_open: 15.0, mon_close: 24.0, tues_open: 15.0, tues_close: 24.0, wed_open: 15.0, wed_close: 24.0, thur_open: 15.0, thur_close: 24.0, fri_open: 15.0, fri_close: 24.0, sat_open: 15.0, sat_close: 24.0, sun_open: 15.0, sun_close: 24.0, instagram_location_id: "915628740", average_rating: 5.0},
  {name: "Bamboo Sushi NW", category: "Restaurant", address: "836 NW 23rd Ave. Portland, OR 97210", phone: "Ph: (971) 229-1925", website: "http://www.bamboosushi.com", hours: "Dinner nightly 5–10pm,  Happy Hour M-F 5-6pm", location: "NW", neighborhood: "Nob HIll", menu: "Happy Hour\r\n(monday – friday 5:00 – 6:00 at the NW location, 4:30 - 6:00 at NE and SE)\r\ntsukemono 4\r\nhouse-pickled vegetables\r\nokonomiyaki 5\r\njapanese savory pancake with shrimp and mushrooms,\r\ntopped with parmesan fried oysters, drizzled with aioli and eel sauce\r\nasian steamed bun 4\r\nhouse-made steamed bun, filling changes frequently\r\nkaiso seaweed salad 4\r\nimo koroshi —“potato killer” 4\r\nroasted yam press box, garlic-soy bu!er, and sesame-chile powder\r\njapanese miso mushrooms 5\r\npan seared mushroom blend with charred negi, miso glaze and micro greens\r\nmixed greens salad 6\r\nlocal vegetables and carrot-ginger dressing\r\nvegetable yakisoba 9\r\npan crisped noodles with tamarind soy and fried tofu\r\nvegetable tempura 5\r\n—gluten-free option available +2\r\nchar grilled shishito peppers* 5\r\nshishito peppers tossed with miso bu!er and bacon,\r\ntopped with bonito flakes\r\n“karashi” hanger 7\r\nmarinated and grilled St Helens hanger steak with asian mustard\r\nmushrooms and puffed rice\r\nSUSHI\r\ncalifornia roll* 5\r\nnw philly 6\r\nnigiri set 7\r\ndaily hand roll 3\r\nvegetable roll 3\r\ninari (vegetarian) 2\r\nto participate in happy hour specials, a minimum of one drink per person must be ordered \r\n\r\n-----\r\n\r\nTasting Menu\r\na selection of our favorite items for $100 (a savings of $9) for 2,\r\ncan accommodate 3 if you add a few items from the regular menu\r\nplease no substitutions, can not be prepared gluten-free\r\ntsukemono\r\nassorted house-pickled vegetables\r\nMSC albacore carpaccio\r\nthinly sliced albacore with chopped, house-smoked cipollini onion,\r\npickled shiitake mushrooms, momiji, ponzu, chervil, and japanese sea salt\r\nusuzukuri\r\nthinly sliced whitefish with finely chopped chiles, ponzu,\r\ngreen onions, tobiko, sesame seeds, and tataki yasai\r\nimo koroshi — “potato killer”\r\nroasted yam press box, garlic-soy bu!er, and sesame-chile powder\r\nchargrilled shishito peppers*\r\nshishito peppers tossed with miso bu!er\r\nand bacon, topped with bonito flakes\r\njapanese miso mushrooms\r\npan-seared mushroom blend with charred negi, miso glaze, and micro greens\r\nokonomiyaki\r\njapanese savory pancake with shrimp and mushrooms,\r\ntopped with parmesan fried oysters, drizzled with aioli and eel sauce\r\nhoki poke box\r\nsushi rice “pressed” with red crab salad, layered with tuna,\r\navocado, green onion, togarashi, and poke sauce\r\nsaikyo miso oregon coast black cod*\r\nsweet miso marinated with orange and ginger\r\n“house on fire” mackerel*\r\ngrilled mackerel, drizzled in red chile oil, topped with pickled mustard “caviar,”\r\nseasoned with lemon charcoal and alder wood smoke\r\nsea urchin crème brûlée*\r\nSalads\r\ntsukemono 6\r\nassorted house-pickled vegetables\r\ncrispy salmon skin salad 9\r\ngrilled romaine and radicchio topped with ikura and salmon skin “chicharrones,”\r\ndressed in a garlic and shallot vinaigre!e\r\nkaiso seaweed salad 6\r\na mixture of seaweeds in a sweetened rice vinegar dressing\r\ntraditional japanese spinach salad 6\r\nblanched spinach with sesame-soy dressing (served chilled)\r\nmiso glazed japanese eggplant 6\r\nwith ginger, honey, and rice crisps\r\nsunomono salad 4\r\nthinly sliced, lightly cured cucumbers, in a sweetened rice vinegar dressing\r\n—with crab, shrimp and surf clam* 9\r\norganic mixed greens 9\r\ncarrot ginger dressing\r\nTempura\r\nseafood and vegetable tempura* 11\r\na variety of local vegetables with 2 pieces shrimp and 1 piece sole\r\n—gluten-free option available +2\r\nwhite shrimp tempura* 12\r\n6 pieces of white shrimp\r\n—gluten-free option available +2\r\nvegetable tempura 7\r\na variety of local vegetables\r\n—gluten-free option available +2 \r\nVegetables\r\nimo koroshi —“potato killer” 6\r\nroasted yam press box, garlic-soy bu!er, and sesame-chile powder\r\nchargrilled shishito peppers* 7\r\nshishito peppers tossed with miso bu!er and bacon,\r\ntopped with bonito flakes\r\nagedashi tofu* 7\r\nfried silken ota tofu, dashi, katsuo bushi, and negi\r\njapanese miso mushrooms 7\r\npan-seared mushroom blend with charred negi, miso glaze, and micro greens\r\nvegetable yakisoba 13\r\npan-crisped noodles with tamarind soy and fried tofu\r\nour items and kitchens are not certified gluten-free. gluten-free items are prepared\r\n(and cooked in the same oil if deep fried) with other items containing gluten.\r\nwe cannot take responsibility for cross-contamination.\r\ndenotes items that are made with gluten-free ingredients.\r\ndenotes items that can be made gluten-free with modifications to the preparation.\r\nsome gluten-free modifications require a small price increase.\r\nThe Oregon State Health Department says that consuming raw or undercooked meats,\r\npoultry, seafood, shellfish, herbed momiji sauce (contains raw egg), house made aioli\r\n(contains raw egg), or eggs may increase your risk of food-borne illness.\r\nThe Oregon State Health Department also says, since we are a restaurant that serves\r\npredominately raw meat, selections on our menu from animal-derived foods that do\r\nnot contain any raw, undercooked, or cooked to order items (including raw eggs) are\r\nmarked with an *.\r\nSignature Seafood\r\n“house on fire” mackerel* 12\r\ngrilled mackerel drizzled in red chile oil, topped with pickled mustard “caviar,”\r\nseasoned with lemon charcoal and alder wood smoke\r\nokonomiyaki 8\r\njapanese savory pancake with shrimp and mushrooms, topped with\r\nparmesan fried oysters, aioli, and eel sauce\r\nsaikyo miso oregon coast black cod* 13\r\nsweet miso marinated with ginger and seasonal citrus\r\nMeat\r\nbraised short ribs* 14\r\nwith roasted root vegetables and asian pear jus\r\n“karashi” hanger 11\r\nmarinated and grilled St Helens hanger steak with asian mustard mushrooms\r\nand puffed rice\r\nasian steamed bun 6\r\nhouse-made steamed bun, filling changes frequently\r\n1/2 pound snake river farms wagyu burger 14\r\non brioche with aged tillamook white cheddar, caramelized onions,\r\nmomiji sauce, and tempura onion rings\r\n—add bacon +2\r\n—add free range fried egg +1\r\n—add togarashi fried shallot rings +1\r\nSpecialty Plates\r\nusuzukuri 13\r\nthinly sliced whitefish with finely chopped chiles, ponzu, green onions,\r\ntobiko, sesame seeds, and tataki yasai\r\nMSC albacore carpaccio 15\r\nthinly sliced albacore with chopped, house-smoked cipollini onion,\r\npickled shiitake mushrooms, momiji, ponzu, chervil, and japanese sea salt\r\nhoki poke box (6 piece) 15\r\nsushi rice pressed with red crab salad and layered with tuna,\r\navocado, green onion, togarashi, and poke sauce\r\ntuna poke 11\r\njapanese style poke with cubed tuna, cucumbers,\r\nonions, wakame, and sweet & spicy sesame dressing\r\nNigiri or Sashimi (2 pc)\r\n(please inquire with your server about specials)\r\nkani: east coast red crab* (East Coast) 6\r\nshiro maguro: albacore (Oregon) (SG) 6\r\nwild alaskan salmon - coho (SG) 6\r\ntasmanian ocean trout 8\r\nmaguro: tuna (troll & pole - Philippines/Hawaii) 6\r\ntuna tataki 6\r\nhouse-smoked wild ivory salmon (SG) 5\r\nspicy scallop 5\r\ntako: house-cooked octopus* (diver caught - Spain/by catch - Oregon, Washington, Alaska) 8\r\ninari: fried tofu with rice 2\r\navocado nigiri 3\r\nmirugai: giant clam (Washington) 8\r\nmasaba: house-pickled mackerel (Japan) 7\r\nama ebi: sweet shrimp (Canadian) (SG) 6\r\nhokki gai: arctic surf clam* 3.5\r\nhotate: scallop (Japan) 5\r\nanago: sea eel* (pole caught - Korea) 4.5\r\ntamago: sweet egg omelet* (house-made) 3.5\r\nebi: cooked shrimp* (Ecuador) 4\r\nikura: wild salmon roe (SG) 5\r\nhabanero masago: smelt roe (Iceland) 3.5\r\nred tobiko: flying fish roe (USA) 4.5\r\nblack tobiko: flying fish roe (USA) 5\r\nyuzu tobiko: flying fish roe (USA) 5\r\nuzura: quail egg 1\r\nmost nigiri and sashimi are gluten-free. exceptions include inari, anago, ikura,\r\nand tuna tataki. please let your server know if you prefer to dine gluten-free.\r\nSpecialty Nigiri & Sashimi Plates\r\naburi nigiri (sweet or savory) 6\r\nchoice of sweet or savory soy marinated albacore, lightly torched\r\nalbacore crunchy nigiri 7\r\nMSC albacore atop a mixture of slightly spicy east coast red crab salad\r\nand tempura crunchies\r\nwild alaskan salmon yuan-zuke 6\r\nseasoned-soy marinated wild alaskan salmon\r\ntruffled avocado 4\r\navocado nigiri sprinkled with french black truffle salt\r\nassorted sashimi 25\r\ntuna, wild salmon, and MSC albacore\r\nchirashi 27\r\nchef’s choice sashimi on a bowl of sushi rice\r\nchef’s choice sashimi mp\r\nfreshest items of the day\r\nassorted sushi 16\r\n5 pc nigiri with 4 pc california roll\r\nassorted vegetarian sushi 9\r\n8 pc veg roll, 2 pc avocado nigiri, 2 pc inari\r\nTraditional Rolls\r\n(hand rolls available)\r\ncalifornia roll - made with house crab 6\r\nsalmon roll 6\r\nphilly roll smoked ivory salmon with cream cheese & cucumbers 7\r\nsalmon and long bean roll 6\r\nsalmon skin roll 7\r\nspicy salmon roll 8\r\nspicy scallop roll 8\r\nbuddha roll fresh & pickled vegetables (vegetarian) 7\r\ncucumber roll (vegetarian) 4\r\nvegetable roll roasted peppers, cucumbers, sprouts, avocado & gobo 5\r\nume shiso roll pickled plum with shiso (vegetarian) 4\r\navocado roll (vegetarian) 4\r\nna!o roll 4\r\nkanpyo roll pickled gourd 4\r\ntuna roll 7\r\nbu!erfly roll sea eel, crab, cucumber, topped with avocado 12\r\nrainbow roll 14\r\nspicy tuna roll 8\r\nspider roll so! shell crab roll 9\r\nshrimp tempura roll 9\r\nsea eel roll* 6\r\nHouse Signature Rolls\r\nthe local (8 piece) 15\r\nMSC albacore, strips of red jalapeño, and cucumbers inside topped with east coast red crab mixed with spicy sesame aioli and black tobiko\r\nhighway 35 (8 piece) 15\r\neast coast red crab mixed with spicy sesame aioli, avocado, cucumber, and long bean,\r\ntopped with sake poached pears, eel sauce, tempura crunchies, and tobiko\r\ngarden of eden (8 piece) 16\r\nspicy albacore, cucumber, and apple inside topped with tuna tataki,\r\nbasil, and pickled mustard seeds, with a touch of spicy aioli on the plate\r\nlucky 13 (8 piece) 13\r\nMSC albacore, cucumber, and avocado inside with a mixture of\r\neast coast red crab, scallop, yuzu tobiko, and cilantro across the top\r\ngreen machine (8 piece - vegetarian) 10\r\ntempura fried long bean and green onions topped with avocado\r\nand cilantro-sweet chili aioli —with albacore or crab salad +5\r\n—gluten-free option available +1\r\nHouse Signature Rolls\r\npdx roll (8 piece - vegetarian) 9\r\ntempura shishito peppers, smoked pickled long bean, and yamagobo,\r\nrolled with soy paper, then topped with pickled shiitake and red\r\nonion, tofu-avocado “aioli,” and shiitake glaze\r\n310 (8 piece - vegetarian) 11\r\nmarinated fried tofu, roasted peppers, cucumbers, long bean, and yamagobo\r\nwrapped with avocado and sweet shiitake glaze\r\ncalifornia sunset (8 piece) 12\r\na california roll topped with spicy tuna, spicy garlic aioli, and\r\ntempura crunchies\r\nchasing the dragon (6 piece) 15\r\nshrimp tempura, spicy tuna, house crab, cucumbers, avocado,\r\nand tobiko, rolled in tempura crunchies\r\nnorthwest philly (8 piece) 9\r\nsalmon, cream cheese, and avocado, tempura fried and\r\nfinished with eel sauce\r\n—gluten-free option available +1\r\nHouse Made Desserts\r\n$8\r\nchocolate ganache bar\r\nmade with 72% single-origin chocolate, with korean chili crumble, and spiced honey\r\nwhiskey boudino\r\nwhiskey pudding with sea salt caramel (for 21+ only)\r\nchocolate egg rolls\r\nrolled in sugar and served with candied ginger ice cream*\r\ncoconut panna co!a\r\npandanus coconut custard with sweet grapefruit and lime gastrique\r\ngingersnap and salted caramel powder\r\nwith chai ice cream* and caramel sauce\r\nsea urchin crème brûlée*\r\nhouse-made ice cream*\r\n$3 per scoop", profile_image_id: "27820", latitude: 45.5288719, longitude: -122.69849, mon_happy_start: 17.0, mon_happy_end: 18.0, tues_happy_start: 17.0, tues_happy_end: 18.0, wed_happy_start: 17.0, wed_happy_end: 18.0, thur_happy_start: 17.0, thur_happy_end: 18.0, fri_happy_start: 17.0, fri_happy_end: 18.0, sat_happy_start: 17.0, sat_happy_end: 18.0, sun_happy_start: 17.0, sun_happy_end: 18.0, mon_open: 17.0, mon_close: 22.0, tues_open: 17.0, tues_close: 22.0, wed_open: 17.0, wed_close: 22.0, thur_open: 17.0, thur_close: 22.0, fri_open: 17.0, fri_close: 22.0, sat_open: 17.0, sat_close: 22.0, sun_open: 17.0, sun_close: 22.0, instagram_location_id: "19816783", average_rating: 5.0},
  {name: "Victory Bar", category: "Bar", address: "3652 SE Division St, Portland, OR 97202", phone: "(503) 236-8755", website: "http://thevictorybar.com/", hours: "Sunday-Wednesday: 5pm - 1am, Thursday: 5pm - 1:30am, Friday&Saturday: 5pm - 2am", location: "SE", neighborhood: "Division", menu: "2pm – 8pm Seven Days\r\n$.50 off Wells $.50 off Pints $1.00 off Wine\r\nSoup 4\r\nHouse made w/ grilled bread\r\nMixed Green Salad 4\r\nOrganic greens, citrus vinaigrette\r\nDeviled Eggs 4\r\nClassic style w/ house pickles\r\nSpinach Artichoke Dip 4\r\nWith pita chips\r\nGarlic Green Beans 4\r\nSauteed w/ sweet garlic soy sauce\r\nGolden Fries 4\r\nSpicy smoked paprika, sea salt, garlic aoili\r\nCaesar Salad 5\r\nRomaine hearts, garlic croutons, parmesan\r\nMeat\r\nChicken +2\r\nMascarpone Ravioli 5\r\nSweet​ potato, pinot noir shitake demi-glaze\r\nClassic Mac 5\r\nClassic mac & cheese w/ aged cheddar\r\nExtras\r\nBacon +1  Tomato +1\r\nArancini 5\r\nSaffron risotto fritters, prosciutto, mozzarella, spicy marinara\r\nCrab Rangoon 5\r\nBlue crab, cream cheese, wonton\r\nOyster Corn Fritters 5\r\nVodka cocktail sauce, lemon, remoulade\r\nBaked Brie & Roasted Garlic 6\r\nOlive tapenade, grilled baguette\r\nCrab Cakes 6\r\nWith sweet chili cilantro aioli\r\nVenus Clams 6\r\nLemon​ grass curry broth, grilled bread\r\nGold Dust Wings 6\r\nJamaican jerk, pineapple teriyaki, asian BBQ or jalapeno bourbon\r\nExtras\r\nAsian BBQ  Jalapeno bourbon\r\nSpanish Meatballs 6\r\nRomesco sauce, fresh herbs, grilled bread\r\nThe Trio 6\r\nTillamook cheddar & Swiss on parmesan crusted sourdough soup & salad\r\nHappy Hour food is dine in only please", profile_image_id: "27824", latitude: 45.5047001, longitude: -122.625362, mon_happy_start: 17.0, mon_happy_end: 18.0, tues_happy_start: 17.0, tues_happy_end: 18.0, wed_happy_start: 17.0, wed_happy_end: 18.0, thur_happy_start: 17.0, thur_happy_end: 18.0, fri_happy_start: 17.0, fri_happy_end: 18.0, sat_happy_start: 17.0, sat_happy_end: 18.0, sun_happy_start: 17.0, sun_happy_end: 18.0, mon_open: 17.0, mon_close: 24.0, tues_open: 17.0, tues_close: 24.0, wed_open: 17.0, wed_close: 24.0, thur_open: 17.0, thur_close: 24.0, fri_open: 17.0, fri_close: 24.0, sat_open: 17.0, sat_close: 24.0, sun_open: 17.0, sun_close: 24.0, instagram_location_id: "298118", average_rating: 2.0},
  {name: "Gold Dust Meridian", category: "Lounge", address: "3267 SE Hawthorne Blvd, Portland, OR 97214", phone: "(503) 239-1143", website: "http://golddustmeridian.com/", hours: "2:00pm - 2:30am", location: "SE", neighborhood: "Hawthorne", menu: "2pm – 8pm Seven Days\r\n$.50 off Wells $.50 off Pints $1.00 off Wine\r\n\r\n4\r\n\r\nSoup\r\nHousemade with grilled baguette\r\n\r\nMixed Green Salad\r\nOrganic greens, parmesan, citrus vinaigrette\r\n\r\nDeviled Eggs\r\nWith house pickles\r\n\r\nStuffed Mushrooms\r\nRicotta and breadcrumb stuffing\r\n\r\nArugula Artichoke Dip\r\nWith pita chips\r\n\r\n5\r\n\r\nCaesar Salad\r\nRomaine hearts, garlic croutons, parmesan\r\nadd chicken 2.\r\n\r\nGarlic Green Beans\r\nSauteed with sweet garlic soy sauce\r\n\r\nCaprese Crostini\r\nTomato, mozzarella, basil, balsamic reduction\r\n\r\nSpring Ravioli\r\nSpinach, ricotta, white wine cream sauce\r\n\r\nBBQ Chicken Flatbread\r\nBacon, mozzarella, red onion, cilantro\r\n\r\nClassic Mac\r\nOregon aged cheddar, smoked gouda, mozzarella\r\nadd bacon, broccolini, or tomato 1.\r\n\r\n6\r\n\r\nCeviche\r\nWith house corn chips\r\n\r\nCrab Cakes\r\nArugula, capers, aioli, lemon\r\n\r\nLemongrass Clams\r\nGreen curry coconut broth, grilled baguette\r\n\r\nGold Dust Wings\r\nBourbon bbq, smoked jalepeno, asian bbq,\r\njamaican jerk, or marionberry habanero\r\n\r\nThe Trio\r\nSmoked gouda, cheddar and swiss on parmesan crusted sourdough\r\nSoup and salad\r\n\r\nFull munu and daily specials available all hours all days\r\n\r\nHappy Hour food is dine in only please", profile_image_id: "27822", latitude: 45.5122349, longitude: -122.6312571, mon_happy_start: 14.0, mon_happy_end: 20.0, tues_happy_start: 14.0, tues_happy_end: 20.0, wed_happy_start: 14.0, wed_happy_end: 20.0, thur_happy_start: 14.0, thur_happy_end: 20.0, fri_happy_start: 14.0, fri_happy_end: 20.0, sat_happy_start: 14.0, sat_happy_end: 20.0, sun_happy_start: 14.0, sun_happy_end: 20.0, mon_open: 14.0, mon_close: 24.0, tues_open: 14.0, tues_close: 24.0, wed_open: 14.0, wed_close: 24.0, thur_open: 14.0, thur_close: 24.0, fri_open: 14.0, fri_close: 24.0, sat_open: 14.0, sat_close: 24.0, sun_open: 14.0, sun_close: 24.0, instagram_location_id: "223085", average_rating: 0.0},
  {name: "Clyde Common", category: "Tavern", address: "1014 SW Stark St, Portland, OR 97205", phone: "blah", website: "http://www.clydecommon.com", hours: "Brunch Served Sat-Sun 10am-3pm; Lunch Mon-Fri 11:30am – 3pm; Happy Hour Daily 3pm – 6pm; Dinner Mon-Sat 6-12pm & Sun 6-11pm", location: "SW", neighborhood: "Downtown", menu: "Happy Hour: \r\n\r\nFOOD\r\npopcorn, tōgarashi, honey (v)  3.\r\nmarinated olives (v)  3.\r\ngarlic roasted cashews (v)(a)  3.\r\npork and shitake lumpia, sweet n sour, slaw 5.\r\nClyde Common Pate, pickles, baguette & mostarda  5.\r\nchicken liver mousse, shortbread & jam  6.\r\nasparagus, citrus vinaigrette, duck yolk (v) 6.\r\ngrilled duck hearts, meyer lemon butter & brioche  6.\r\nsaganaki, seared house cheese curds & olive bread (v)  7.\r\nmussels, french fries, chorizo butter, green garlic aioli*   8.\r\nkielbasa, smashed peas, fried onions 8.\r\n6 oz. CC burger, bacon jam, B&B pickles, american cheese, fancy sauce  8.\r\n     **served medium\r\n\r\n***all items are served as they are ready\r\n(a)contains nuts (v)vegetarian *we use fresh, unpasteurized ingredients.\r\nWINE AND BEER\r\ndraft beer  4.\r\nhouse red  6.\r\nhouse white  6.\r\n\r\nCOCKTAILS  6.\r\nBittersweet Symphony:\r\nAperol, gin, Punt e Mes, lemon peel\r\n\r\nSpelling Bee:\r\nCazadores reposado tequila, agave syrup,\r\nabsinthe, bitters, grapefruit peel\r\n\r\nDaily Punch:\r\nAQ\r\n\r\nBourbon Renewal:\r\nbourbon, lemon, cassis, bitters\r\n\r\nPacific Standard:\r\nvodka, lemon, ginger, honey, soda", profile_image_id: "b8197848c8e14801256c348c76f9160c2faa21ee1458337c4480d746d7cf", latitude: 45.5219751, longitude: -122.6815254, mon_happy_start: 15.0, mon_happy_end: 18.0, tues_happy_start: 15.0, tues_happy_end: 18.0, wed_happy_start: 15.0, wed_happy_end: 18.0, thur_happy_start: 15.0, thur_happy_end: 18.0, fri_happy_start: 15.0, fri_happy_end: 18.0, sat_happy_start: 15.0, sat_happy_end: 18.0, sun_happy_start: 15.0, sun_happy_end: 18.0, mon_open: 11.5, mon_close: 24.0, tues_open: 11.5, tues_close: 24.0, wed_open: 11.5, wed_close: 24.0, thur_open: 11.5, thur_close: 24.0, fri_open: 11.5, fri_close: 24.0, sat_open: 10.0, sat_close: 24.0, sun_open: 10.0, sun_close: 23.0, instagram_location_id: "85189", average_rating: 4.0}
])
Favorite.create!([
  {user_id: 1, eat_id: 3},
  {user_id: 1, eat_id: 5},
  {user_id: 2, eat_id: 7}
])
