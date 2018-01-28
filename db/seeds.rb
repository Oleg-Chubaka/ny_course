OlegGame.all.each do |t|
  t.categories.clear
end

OlegGame.delete_all
Category.delete_all
Author.delete_all
GameImage.delete_all



authors = Author.create([{first_name: 'Уве', last_name: 'Розенберг', tesera_url: 'Uwe_Rosenberg/'}, {first_name: 'Михаэль', last_name: 'Туммелхофер', tesera_url: '474/'}, {first_name: 'Фредерик', last_name: 'Мойерсон', tesera_url: 'frederic_moyersoen/'}])

oleg_games = OlegGame.create([{name: 'Агрикола', review: 'Игра про фермеров', price: 400, hours: 48, rating: 7.92, author: authors[0], status: true, tesera_url: 'agricola/'}, {name: '100000 лет да нашей эры', review: 'Каменный век', price: 200, hours: 40, rating: 7.67, author: authors[1], status: true, tesera_url: 'stone_age/'}, {name: 'Гномы-вредители(стартовая игра)', review: 'Добыть золото!', price: 200, hours: 10, rating: 6.59, author: authors[2], status: true, tesera_url: 'saboteur/'}, {name: 'Гномы-вредители 2 (дополнение)', review: 'Добыть золото! Больше ролей!', price: 250, hours: 10, rating: 7.07, author: authors[2], status: true, tesera_url: 'saboteur_2/'}])

categories = Category.create([{name: 'Экономика'}, {name: 'Карты'}, {name: 'Приключения'}])

oleg_games[0].categories << categories[0]
oleg_games[1].categories << categories[0]
oleg_games[2].categories << categories[1] << categories[2]
oleg_games[3].categories << categories[1] << categories[2]

GameImage.create([{img_url: 'https://tesera.ru/images/items/509,3/200x200xpa/photo1.jpg', oleg_game: oleg_games[0], main: true}, {img_url: 'https://tesera.ru/images/items/509,3/200x200xpa/photo2.jpg', oleg_game: oleg_games[0]}, {img_url: 'https://tesera.ru/images/items/472,3/200x200xpa/photo1.png', oleg_game: oleg_games[1], main: true}, {img_url: 'https://tesera.ru/images/items/472,3/200x200xpa/photo2.jpg', oleg_game: oleg_games[1]}, {img_url: 'https://tesera.ru/images/items/472,3/200x200xpa/photo1.png', oleg_game: oleg_games[2], main: true}, {img_url: 'https://tesera.ru/images/items/22648,3/200x200xpa/photo1.jpg', oleg_game: oleg_games[3], main: true}])


Pioneer.delete_all
SolarSystemObject.delete_all
PioneerImage.delete_all
SolarSystemObjectImage.delete_all

pioneers = Pioneer.create([{first_name: 'Галилео', last_name: 'Галилей'}, {first_name: 'Уильям', last_name: 'Гершель'}])
solar_system_objects = SolarSystemObject.create([{name: 'Меркурий', pioneer: pioneers[0], opening_date: 'Начало ХVII века', distance_from_sun: 'В среднем 57,91 млн км', distance_from_earth: 'В среднем 149,5 млн км', weight: '3,285E20 т', notes: 'Планета земной группы. Безжизнен. Есть атмосфера. Спутников нет.'}, {name: 'Венера', pioneer: pioneers[0], opening_date: '1610 год', distance_from_sun: 'В среднем 108,2 млн км', distance_from_earth: 'В среднем 149,5 млн км', weight: '4,867E21 т', notes: 'Планета земной группы. Безжизнена. Есть атмосфера. Спутников нет.'}, {name: 'Марс', pioneer: pioneers[0], opening_date: '1610 год', distance_from_sun: 'В среднем 227,9 млн км', distance_from_earth: 'В среднем 225 млн км', weight: '6,39E20 т', notes: 'Планета земной группы. Безжизнен. Есть атмосфера. 2 спутника : Фобос и Деймос.'}, {name: 'Юпитер', pioneer: pioneers[0], opening_date: 'Начало XVII века', distance_from_sun: 'В среднем 778,5 млн км', distance_from_earth: 'В среднем 778,5472 млн км', weight: '1,898E24 т', notes: 'Газовая планета - гигант. Безжизнен. Есть атмосфера. 69 спутников.'}, {name: 'Сатурн', pioneer: pioneers[0], opening_date: '1609 год', distance_from_sun: 'В среднем 1430 млн км', distance_from_earth: 'В среднем 1427,5 млн км', weight: '5,683E23 т', notes: 'Газовая планета - гигант. Безжизнен. Есть атмосфера. Есть мощная система колец из космического мусора. 62 спутника.'}, {name: 'Уран', pioneer: pioneers[1], opening_date: '13 марта 1781 года', distance_from_sun: 'В среднем 2875 млн км', distance_from_earth: 'В среднем 2,86 млрд км', weight: '8,681E22 т', notes: 'Ледяная планета - гигант. Безжизнен. Есть атмосфера. 27 спутников.'}, {name: 'Нептун', pioneer: pioneers[0], opening_date: '28 декабря 1612 года', distance_from_sun: 'В среднем 4497 млн км', distance_from_earth: 'В среднем 4347,4 млн км', weight: '1,024E23 т', notes: 'Ледяная планета - гигант. Безжизнен. Есть атмосфера. 14 спутников.'}])

PioneerImage.create([{img_url: 'https://24smi.org/public/media/235x307/celebrity/2017/04/27/2XtfbNo9MLzT_galileo-galilei.jpg', pioneer: pioneers[0]}, {img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/William_Herschel01.jpg/220px-William_Herschel01.jpg', pioneer: pioneers[1]}])
SolarSystemObjectImage.create([{img_url: 'http://tut-cikavo.com/images/kosmos/planety-sonyachnoi-sistemy/13952301031.jpg', solar_system_object: solar_system_objects[0]}, {img_url: 'http://mks-onlain.ru/wp-content/uploads/2016/09/venera1.jpg', solar_system_object: solar_system_objects[1]}, {img_url: 'http://dokonline.com/uploads/posts/2017-09/1506689062_555.jpg', solar_system_object: solar_system_objects[2]}, {img_url: 'http://v-kosmose.com/wp-content/uploads/2013/10/maxresdefault-1.jpg', solar_system_object: solar_system_objects[3]}, {img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Saturn_during_Equinox.jpg/1200px-Saturn_during_Equinox.jpg', solar_system_object: solar_system_objects[4]}, {img_url: 'http://spacegid.com/wp-content/uploads/2014/08/Voyadzher-2-sdelal-e%60tot-snimok-Neptuna-za-pyat-dney-do-svoego-istoricheskogo-proleta-planetyi-25-avgusta-1989-goda-1024x1022.jpg', solar_system_object: solar_system_objects[5]}, {img_url: 'http://www.iastro.ru/wp-content/uploads/2014/10/Neptune1.jpg', solar_system_object: solar_system_objects[6]}])


Team.delete_all
BestPlayer.delete_all
TeamImage.delete_all
BestPlayerImage.delete_all

teams = Team.create([{name: 'Барселона', country: 'Испания', foundation_date: '29 ноября 1899 г.', trener: 'Эрнесто Вальверде', rating: '5 звёзд', notes: '24 — титула чемпиона Испании, 29 — Кубков Испании, 12 — Суперкубков Испании, 2 — Кубка испанской лиги.'}])
best_players = BestPlayer.create([{first_name: 'Лионель', last_name: 'Месси', team: teams[0]}, {first_name: 'Луис', last_name: 'Суарес', team: teams[0]}, {first_name: 'Жерар', last_name: 'Пике', team: teams[0]}, {first_name: 'Неймар да Силва', last_name: 'Сантос Жуниор', team: teams[0]}])

TeamImage.create([{img_url: 'http://www.football-wallpapers.com/w/clubs/barcelona/barcelona-bayern-munich-champions-league.jpg', team: teams[0]}])
BestPlayerImage.create([{img_url: 'http://www.movenoticias.com/wp-content/uploads/2016/07/13696400-673117006170428-174280934-n-e1469633744943-744x536.jpg', best_player: best_players[0]}, {img_url: 'http://images.performgroup.com/di/library/goal_uk/a2/f0/hd-luis-suarez-liverpool_l94i7uvqn3t81n7b3mv2ptmoi.jpg?t=-1767425435&w=940', best_player: best_players[0]}, {img_url: 'https://dpchas.com.ua/sites/default/files/styles/article_list/public/u98/image_3.jpg?itok=Py1rdt_x', best_player: best_players[0]}, {img_url: 'http://playnextbet.com/wp-content/uploads/2017/08/Neymar-Junior-Paris-Saint-Germain.jpg', best_player: best_players[0]},])
