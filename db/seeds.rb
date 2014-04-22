# THIS IS WHERE WE DECLARE THE MOVIE TYPE
upcoming = Type.new(name: 'upcoming')
archives = Type.new(name: 'archives')

# THIS IS WHERE WE DECLARE THE MOVIE TITLES
# X-MEN MOVIES
x_men_1 = Movie.new(title: 'X-Men',
             image_file_name: 'x_men_1')
x_men_2 = Movie.new(title: 'X2',
             image_file_name: 'x_men_2')
x_men_3 = Movie.new(title: 'X-Men: The Last Stand',
             image_file_name: 'x_men_3')
x_men_4 = Movie.new(title: 'X-Men: Days of Future Past',
             image_file_name: 'x_men_4')
x_men_first_class = Movie.new(title: 'X-Men: First Class',
             image_file_name: 'x_men_first_class')
x_men_origins_wolverine = Movie.new(title: 'X-Men Origins: Wolverine',
             image_file_name: 'x_men_origins_wolverine')
the_wolverine = Movie.new(title: 'The Wolverine',
             image_file_name: 'the_wolverine')
# AVENGERS MOVIES
avengers_1 = Movie.new(title: 'The Avengers',
             image_file_name: 'avengers_1')
avengers_2 = Movie.new(title: 'Avengers 2: Age of Ultron',
             image_file_name: 'avengers_2')
# IRON-MAN MOVIES
iron_man_1 = Movie.new(title: 'Iron Man',
             image_file_name: 'iron_man_1')
iron_man_2 = Movie.new(title: 'Iron Man 2',
             image_file_name: 'iron_man_2')
iron_man_3 = Movie.new(title: 'Iron Man 3',
             image_file_name: 'iron_man_3')
# THOR MOVIES
thor_1 = Movie.new(title: 'Thor',
             image_file_name: 'thor_1')
thor_2 = Movie.new(title: 'Thor: The Dark World',
             image_file_name: 'thor_2')
# CAPTAIN AMERICA MOVIES
captain_america_original = Movie.new(title: 'Captain America',
             image_file_name: 'captain_america_original')
captain_america_1 = Movie.new(title: 'Captain America: The First Avenger',
             image_file_name: 'captain_america_1')
captain_america_2 = Movie.new(title: 'Captain America: The Winter Soldier',
             image_file_name: 'captain_america_2')
# HULK MOVIES
hulk = Movie.new(title: 'Hulk',
             image_file_name: 'hulk')
the_incredible_hulk = Movie.new(title: 'The Incredible Hulk',
             image_file_name: 'the_incredible_hulk')
# SPIDER-MAN MOVIES
amazing_spider_man_1 = Movie.new(title: 'Amazing Spider-Man',
             image_file_name: 'amazing_spider_man_1')
amazing_spider_man_2 = Movie.new(title: 'Amazing Spider-Man 2',
             image_file_name: 'amazing_spider_man_2')
spider_man_1 = Movie.new(title: 'Spider-Man',
             image_file_name: 'spider_man_1')
spider_man_2 = Movie.new(title: 'Spider-Man 2',
             image_file_name: 'spider_man_2')
spider_man_3 = Movie.new(title: 'Spider-Man 3',
             image_file_name: 'spider_man_3')
# GUARDIANS MOVIES
guardians = Movie.new(title: 'Guardians of the Galaxy',
             image_file_name: 'guardians')
# FANTASTIC FOUR MOVIES
the_fantastic_four = Movie.new(title: 'The Fantastic Four',
             image_file_name: 'the_fantastic_four')
fantastic_four_1 = Movie.new(title: 'Fantastic 4',
             image_file_name: 'fantastic_four_1')
fantastic_four_2 = Movie.new(title: 'Fantastic 4: Rise of the Silver Surfer',
             image_file_name: 'fantastic_four_2')
# GHOST RIDER MOVIES
ghost_rider_1 = Movie.new(title: 'Ghost Rider',
             image_file_name: 'ghost_rider_1')
ghost_rider_2 = Movie.new(title: 'Ghost Rider: Spirit of Vengeance',
             image_file_name: 'ghost_rider_2')
# PUNISHER MOVIES
the_punisher_1 = Movie.new(title: 'The Punisher',
             image_file_name: 'the_punisher_1')
the_punisher_2 = Movie.new(title: 'The Punisher',
             image_file_name: 'the_punisher_2')
punisher_war_zone = Movie.new(title: 'Punisher: War Zone',
             image_file_name: 'punisher_war_zone')
# BLADE MOVIES
blade_1 = Movie.new(title: 'Blade',
             image_file_name: 'blade_1')
blade_2 = Movie.new(title: 'Blade II',
             image_file_name: 'blade_2')
blade_3 = Movie.new(title: 'Blade: Trinity',
             image_file_name: 'blade_3')
# SINGLE MOVIES
daredevil = Movie.new(title: 'Daredevil',
             image_file_name: 'daredevil')
electra = Movie.new(title: 'Electra',
             image_file_name: 'electra')
howard_the_duck = Movie.new(title: 'Howard the Duck',
             image_file_name: 'howard_the_duck')

# THIS IS WHERE WE LIST ALL THE MOVIES
# X-MEN MOVIES
x_men_1.type = archives
x_men_2.type = archives
x_men_3.type = archives
x_men_4.type = upcoming
x_men_first_class.type = archives
x_men_origins_wolverine.type = archives
the_wolverine.type = archives
# AVENGERS MOVIES
avengers_1.type = archives
avengers_2.type = upcoming
# IRON-MAN MOVIES
iron_man_1.type = archives
iron_man_2.type = archives
iron_man_3.type = archives
# THOR MOVIES
thor_1.type = archives
thor_2.type = archives
# CAPTAIN AMERICA MOVIES
captain_america_original.type = archives
captain_america_1.type = archives
captain_america_2.type = archives
# HULK MOVIES
hulk.type = archives
the_incredible_hulk.type = archives
# SPIDER-MAN MOVIES
amazing_spider_man_1.type = archives
amazing_spider_man_2.type = upcoming
spider_man_1.type = archives
spider_man_2.type = archives
spider_man_3.type = archives
# GUARDIANS MOVIES
guardians.type = upcoming
# FANTASTIC FOUR MOVIES
the_fantastic_four.type = archives
fantastic_four_1.type = archives
fantastic_four_2.type = archives
# GHOST RIDER MOVIES
ghost_rider_1.type = archives
ghost_rider_2.type = archives
# PUNISHER MOVIES
the_punisher_1.type = archives
the_punisher_2.type = archives
punisher_war_zone.type = archives
# BLADE MOVIES
blade_1.type = archives
blade_2.type = archives
blade_3.type = archives
# SINGLE MOVIES
daredevil.type = archives
electra.type = archives
howard_the_duck.type = archives

# THIS IS WHERE WE LIST ALL THE CHARACTERS
hero = Side.new(name: 'hero')
villain = Side.new(name: 'villain')

# THIS IS WHERE WE LIST ALL THE HERO'S
spider_man = Character.new(
  name: 'spider-man',
  comic_vine_id: 1443,
  marvel_id: 1009610)

mary_jane = Character.new(
  name: 'mary jane',
  comic_vine_id: 13380,
  marvel_id: 1009708)

# THIS IS WHERE WE LIST ALL THE VILLAIN'S
norman_osborn = Character.new(
  name: 'norman osborn',
  comic_vine_id: 58812, 
  marvel_id: 1009325)

harry_osborn = Character.new(
  name: 'harry osborn',
  comic_vine_id: 2478, 
  marvel_id: 1009486)

doctor_octopus = Character.new(
  name: 'doctor octopus',
  comic_vine_id: 1485, 
  marvel_id: 1009276)

spider_man.side = hero
mary_jane.side = hero
harry_osborn.side = hero
norman_osborn.side = villain
doctor_octopus.side = villain

# X-MEN MOVIES
# AVENGERS MOVIES
# IRON-MAN MOVIES
# THOR MOVIES
# CAPTAIN AMERICA MOVIES
# SPIDER-MAN MOVIES
spider_man_1.characters << spider_man
spider_man_1.characters << norman_osborn
spider_man_2.characters << spider_man
spider_man_2.characters << mary_jane
spider_man_2.characters << doctor_octopus
spider_man_2.characters << norman_osborn
spider_man_2.characters << harry_osborn
# GUARDIANS MOVIES
# FANTASTIC FOUR MOVIES
# GHOST RIDER MOVIES
# PUNISHER MOVIES
# BLADE MOVIES
# SINGLE MOVIES

# THIS IS WHERE WE SAVE THE DATA TO OUR DATABASE
# X-MEN MOVIES
x_men_1.save
x_men_2.save
x_men_3.save
x_men_4.save
x_men_first_class.save
x_men_origins_wolverine.save
the_wolverine.save
# AVENGERS MOVIES
avengers_1.save
# avengers_2.save
# IRON-MAN MOVIES
iron_man_1.save
iron_man_2.save
iron_man_3.save
# THOR MOVIES
thor_1.save
thor_2.save
# CAPTAIN AMERICA MOVIES
captain_america_original.save
captain_america_1.save
captain_america_2.save
# SPIDER-MAN MOVIES
amazing_spider_man_1.save
amazing_spider_man_2.save
spider_man_1.save
spider_man_2.save
spider_man_3.save
# GUARDIANS MOVIES
guardians.save
# FANTASTIC FOUR MOVIES
the_fantastic_four.save
fantastic_four_1.save
fantastic_four_2.save
# GHOST RIDER MOVIES
ghost_rider_1.save
ghost_rider_2.save
# PUNISHER MOVIES
the_punisher_1.save
the_punisher_2.save
punisher_war_zone.save
# BLADE MOVIES
blade_1.save
blade_2.save
blade_3.save
# SINGLE MOVIES
daredevil.save
electra.save
howard_the_duck.save
