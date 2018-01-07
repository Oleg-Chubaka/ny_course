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

GameImage.create([{img_url: 'https://tesera.ru/images/items/509,3/200x200xpa/photo1.jpg', oleg_game: oleg_games[0]}, {img_url: 'https://tesera.ru/images/items/509,3/200x200xpa/photo2.jpg', oleg_game: oleg_games[0]}, {img_url: 'https://tesera.ru/images/items/472,3/200x200xpa/photo1.png', oleg_game: oleg_games[1]}, {img_url: 'https://tesera.ru/images/items/472,3/200x200xpa/photo2.jpg', oleg_game: oleg_games[1]}, {img_url: 'https://tesera.ru/images/items/472,3/200x200xpa/photo1.png', oleg_game: oleg_games[2]}, {img_url: 'https://tesera.ru/images/items/22648,3/200x200xpa/photo1.jpg', oleg_game: oleg_games[3]}])

Pioneer.delete_all
SolarSystemObject.delete_all

pioneers = Pioneer.create([{first_name: 'Галилео', last_name: 'Галилей'}])
solar_system_objects = SolarSystemObject.create([{name: 'Меркурий', pioneer: pioneers[0], opening_date: 'Начало ХVII века', distance_from_sun: 'В среднем 57,91 млн км', distance_from_earth: 'В среднем 149,5 млн км', weight: '3,285E20 т',notes: 'Планета земной группы. Безжизнен. Есть атмосфера. Спутников нет.'}])

Team.delete_all
BestPlayer.delete_all

teams = Team.create([{name: 'Барселона', country: 'Испания', foundation_date: '29 ноября 1899 г.', trener: 'Эрнесто Вальверде
', rating: '5 звёзд', notes: '24 — титула чемпиона Испании, 29 — Кубков Испании, 12 — Суперкубков Испании, 2 — Кубка испанской лиги.'}])

best_players = BestPlayer.create([{first_name: 'Лионель', last_name: 'Месси', team: teams[0]}, {first_name: 'Луис', last_name: 'Суарес', team: teams[0]}, {first_name: 'Жерар', last_name: 'Пике', team: teams[0]}, {first_name: 'Неймар да Силва', last_name: 'Сантос Жуниор', team: teams[0]}])
