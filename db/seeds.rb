upcoming = Type.new(name: 'upcoming')
archives = Type.new(name: 'archives')

amazing_spider_man_2 = Movie.new(title: 'Amazing Spider-Man 2',
             image_file_name: 'amazing_spider-man_2')
x_men_4 = Movie.new(title: 'X-Men Days of Future Past',
             image_file_name: 'x-men_4')
guardians = Movie.new(title: 'Guardians of the Galaxy',
             image_file_name: 'guardians')
spider_man_1 = Movie.new(title: 'Spider-Man 1',
             image_file_name: 'spider-man_1')
spider_man_2 = Movie.new(title: 'Spider-Man 2',
             image_file_name: 'spider-man_2')
spider_man_3 = Movie.new(title: 'Spider-Man 3',
             image_file_name: 'spider-man_3')

amazing_spider_man_2.type = upcoming
x_men_4.type = upcoming
guardians.type = upcoming
spider_man_1.type = archives
spider_man_2.type = archives
spider_man_3.type = archives

hero = Side.new(name: 'hero')
villain = Side.new(name: 'villain')

# HEROS
spider_man = Character.new(
  name: 'spider-man',
  comic_vine_id: 1443)

mary_jane = Character.new(
  name: 'mary jane',
  comic_vine_id: 13380)

# VILLAINS
norman_osborn = Character.new(
  name: 'norman osborn',
  comic_vine_id: 58812)

harry_osborn = Character.new(
  name: 'harry osborn',
  comic_vine_id: 2478)

doctor_octopus = Character.new(
  name: 'doctor octopus',
  comic_vine_id: 1485)

spider_man.side = hero
mary_jane.side = hero
norman_osborn.side = villain
harry_osborn.side = hero
doctor_octopus.side = villain

spider_man_1.characters << spider_man
spider_man_1.characters << norman_osborn
spider_man_2.characters << spider_man
spider_man_2.characters << mary_jane
spider_man_2.characters << doctor_octopus
spider_man_2.characters << norman_osborn
spider_man_2.characters << harry_osborn

guardians.save
x_men_4.save
amazing_spider_man_2.save
spider_man_3.save
spider_man_2.save
spider_man_1.save

