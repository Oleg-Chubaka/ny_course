OlegGame.all.each do |t|
  t.categories.clear
end

OlegGame.delete_all
Category.delete_all
Author.delete_all
GameImage.delete_all



authors = Author.create([{first_name: 'Уве', last_name: 'Розенберг', tesera_url: 'Uwe_Rosenberg/'}, {first_name: 'Михаэль', last_name: 'Туммелхофер', tesera_url: '474/'}, {first_name: 'Фредерик', last_name: 'Мойерсон', tesera_url: 'frederic_moyersoen/'}])

oleg_games = OlegGame.create([{name: 'Агрикола', review: 'Молодая крестьянская чета, приобретя дом и клочок земли, под руководством игрока начинает обустраивать своё приусадебное хозяйство. В течение игры, эта неутомимая семейная пара будет добывать камни и древесину, строить загоны, выращивать скот, обустраивать поля, улучшать свои жилищные условия и, наконец, собирать урожаи.<p>
К выбору стратегии необходимо подходить внимательно, так как на всё сразу времени не хватает. Выбирая между животноводством, земледелием и дарами природы, игрок заранее предопределяет будущий курс событий и последовательность своих действий.
Вскоре, в семье произойдёт торжественное событие - рождение первенца, который с малых лет приобщится к крестьянскому быту, и будет помогать родителям, что позволит осуществлять больше действий за ход. Однако к этому моменту хорошо бы озаботиться, чтобы чаду было, где жить и что есть.<p><img>
 Каждый ход начинается с  пополнения ресурсов фермера - вырастают новые сельхозкультуры, нарождается скот, их жетоны кладутся на соответствующие карты. Затем следует стадия полевых работ - фермер, его супруга и, возможно, их ребёнок, проводят день в праведных трудах по уходу за огородом или животными, сбору природных даров или строительству собственного дома. Во время фаз урожаев, игрок собирает все жетоны со своих участков и заполняет склады плодами своего труда. В конце игры, путём подсчёта этих богатств, выясняется победитель.<p>

 Также, в игре есть 7 карт работы и 7 карт предметов, дающие дополнительные бонусы. Вписав их в свою стратегию, можно добиться значительных успехов. Учитывая колоссальное количество различных карт работ (160 штук) и предметов (140), каждая партия становится уникальной. ', price: 400, hours: 48, rating: 7.92, author: authors[0], status: true, tesera_url: 'agricola/'}, {name: '100000 лет да нашей эры', review: '
Игрокам предстоит помочь своему древнему племени пережить Каменный век, распределяя вверенных ему членов общины на разные работы: кого — на охоту, кого — на добычу полезных ископаемых, которые пригодятся для строительства новых хижин, кого — на занятие сельским хозяйством или создание новых орудий труда. Игрок распределяет обязанности между членами племени, постепенно увеличивая их количество (до 10 человек максимум). На первой стадии игроки размещают на поле своих работников в регионах, которые по их мнению, принесут им большую пользу (охотничьи угодья, карьеры, шахты и прочее). При этом важную роль играет то, каким по счёту ходит в этом раунде игрок: первому достаётся полный набор альтернатив, выбор последнего сильно ограничен. Поэтому игрок, ходящий раньше, может не только укреплять позиции своего племени, но и ослаблять соперников, лишая их жизненно необходимых им в данном раунде возможностей. Право ходить первым передаётся между игроками каждый раунд, уравнивая возможности игроков в игре в целом. На второй стадии первый игрок активирует действие занятых им зон в любой выбранной им последовательнсти, затем остальные игроки следуют его примеру. К третьей стадии игроки должны успеть накопить достаточное количество еды, чтобы прокормить всех членов своего племени, иначе им придётся расстаться с некоторым количеством ресурсов или победных очков.<p><img> ', price: 200, hours: 40, rating: 7.67, author: authors[1], status: true, tesera_url: 'stone_age/'}, {name: 'Гномы-вредители(стартовая игра)', review: 'В начале партии между участниками распределяются карточки гномов-шахтёров, за которых будут играть. Игрок может оказаться либо добропорядочным золотоискателем, либо вредителем-саботажником. Роль игрока известна только ему до конца партии.<p>

В ходе игры гномы прокладывают туннели, стремясь добраться от входа в шахту до золотой жилы (добытчики) или запутать их так, чтобы золота не нашли (вредители). С помощью карт игрок может увеличивать систему выработок или совершать особые действия: портить инструмент соперникам и чинить — себе, устраивать обвалы или подсматривать, под какой из карт цели скрывается золото.<p>

Если золотоискателям не удаётся найти жилу, пока не закончились карты в колоде, побеждают вредители. Они получают золотые самородки. Если же игроки добрались до цели, призовое золото делится между добропорядочными гномами.<p>

Победитель определяется после трёх партий, причём всякий раз карты гномов распределяются заново. Таким образом, вредителем может побывать каждый из участников. Выигрывает тот, кто по итогам трёх конов наберёт больше всех золота.', price: 200, hours: 10, rating: 6.59, author: authors[2], status: true, tesera_url: 'saboteur/'}, {name: 'Гномы-вредители 2 (дополнение)', review: 'Saboteur 2 — расширенная версия популярной игры Фредерика Мойерсоена Saboteur, выпущенной впервые в 2004 году издательством Amigo Spiel. Суть игры осталась прежней: игроки разбирают карты, которые и задают, кому быть честным гномом-шахтёром, а кому — вредителем; цель шахтёров — докопаться до золотой жилы и добыть золото, а вредителей — помешать планам первых; кто есть кто, покажет игра.<p>
Гномы начинают свой путь с карты входа в шахту и с надеждой добраться до карт жил. Их разделяют между собой несколько рядов потенциальных туннелей. В свой ход игрок может выложить на стол карту продолжения туннеля, приблизив группу к золотой жиле или же, наоборот, отдалив, если он и есть вредитель. Либо разыграть на кого-нибудь карту действия, чтобы сломать или починить у того один из предметов снаряжения. Если у гнома отсутствует хотя бы один предмет, ему запрещено копать туннель, то есть выкладывать карту на стол в качестве продолжения туннеля. Существуют и другие действия. Можно подглядеть в карты жил, чтобы понять, какая из них — золотая, а какая — пустышка. Или же взорвать одну из уже лежащих на столе карт взрывчаткой. Разыграв карту и выполнив предписанные действия, игрок добирает карту с общей колоды.<p>
Игра длится три раунда, в конце каждого из которых выдаются победные очки. Честные шахтёры получают и делят золотые самородки (исполняющие роль победных очков), если им удалось добраться до золотой жилы. Вредители — если первые остались с носом, не успев добраться до золотой жилы до того, как закончилась колода карт. Роли раздаются заново в начале каждого раунда, поэтому побывать в шкуре вредителей могут успеть все. Главное помнить, что победитель в игре один!<p>
Оригинальная игра поддерживает от 3 до 10 игроков, а Saboteur 2 — от 2 до 12. Saboteur 2 включает компоненты базовой игры, а также новые карты ролей (босса, барыги и геологов), дополнительные карты действий (позволяющие воровать золото или менять свою роль) и туннелей (включая двери, лестницы и мосты). Более того, в новом варианте игры все гномы делятся на две команды — синюю и зелёную, — и победные очки получает только та из них, член которой и добрался до золота.', price: 250, hours: 10, rating: 7.07, author: authors[2], status: true, tesera_url: 'saboteur_2/'}])

categories = Category.create([{name: 'Экономика'}, {name: 'Карты'}, {name: 'Приключения'}])

oleg_games[0].categories << categories[0]
oleg_games[1].categories << categories[0]
oleg_games[2].categories << categories[1] << categories[2]
oleg_games[3].categories << categories[1] << categories[2]

GameImage.create([{img_url: 'https://images-na.ssl-images-amazon.com/images/I/81wAmibxHxL._SL1500_.jpg', oleg_game: oleg_games[0], main: true},
                  {img_url: 'https://www.mosigra.ru/mosigra.product.main/497/473/Agricola_800x500.jpg', oleg_game: oleg_games[0], main: false},
                  {img_url: 'http://www.boardvillegames.com/wp-content/uploads/2017/09/zmg71260_1.jpg', oleg_game: oleg_games[1], main: true},
                  {img_url: 'https://www.igroved.ru/games/stone-age/big/igroved_stone-age_04.jpg', oleg_game: oleg_games[1], main: false},
                  {img_url: 'https://images.prod.meredith.com/product/e65fcf1ab3adb82b6802f6e46325caa5/1507791907347/l/vintage-saboteur-card-game-board-game-board-game-toys', oleg_game: oleg_games[2], main: true},
                  {img_url: 'https://cdn.boardgamearena.net/data/newsimg/Saboteur2.png', oleg_game: oleg_games[3], main: true}])


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

TeamImage.create([{img_url: 'https://www.albawaba.com/sites/default/files/im/Sport/barcelona_squad_2017-2018.jpg', team: teams[0]}])
BestPlayerImage.create([{img_url: 'http://www.movenoticias.com/wp-content/uploads/2016/07/13696400-673117006170428-174280934-n-e1469633744943-744x536.jpg', best_player: best_players[0]}, {img_url: 'http://images.performgroup.com/di/library/goal_uk/a2/f0/hd-luis-suarez-liverpool_l94i7uvqn3t81n7b3mv2ptmoi.jpg?t=-1767425435&w=940', best_player: best_players[1]}, {img_url: 'https://dpchas.com.ua/sites/default/files/styles/article_list/public/u98/image_3.jpg?itok=Py1rdt_x', best_player: best_players[2]}, {img_url: 'http://playnextbet.com/wp-content/uploads/2017/08/Neymar-Junior-Paris-Saint-Germain.jpg', best_player: best_players[3]},])
