upcoming = Type.new(name: 'upcoming')
archives = Type.new(name: 'archives')

amazing_spider_man_2 = Movie.new(title: 'Amazing Spider-Man_2',
             image_file_name: 'amazing_spider-man_2')
x_men_4 = Movie.new(title: 'X-Men Days of Future Past',
             image_file_name: 'x-men_4')
guardians = Movie.new(title: 'Guardians of the Galaxy',
             image_file_name: 'guardians')
avengers_2 = Movie.new(title: 'Avengers:Age of Ultron',
             image_file_name: 'avengers_2')
spider_man_1 = Movie.new(title: 'Spider-Man 1',
             image_file_name: 'spider-man_1')
spider_man_2 = Movie.new(title: 'Spider-Man 2',
             image_file_name: 'spider-man_2')
spider_man_3 = Movie.new(title: 'Spider-Man 3',
             image_file_name: 'spider-man_3')

amazing_spider_man_2.type = upcoming
x_men_4.type = upcoming
guardians.type = upcoming
avengers_2.type = upcoming
spider_man_1.type = archives
spider_man_2.type = archives
spider_man_3.type = archives

avengers_2.save
guardians.save
x_men_4.save
amazing_spider_man_2.save

spider_man_3.save
spider_man_2.save
spider_man_1.save
