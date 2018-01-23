# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities)


users = User.create(
  [
    {
      username: 'adek',
      name: 'adam',
      last_name: 'tadam',
      password: '123'
    },
    {
      username: 'test',
      name: 'Jan',
      last_name: 'Kowalski',
      password: 'test'
    },
    {
      username: 'fajnyziom',
      name: 'Ziom',
      last_name: 'Fajny',
      password: '123'
    },
    {
      username: 'moniek',
      name: 'Boniek',
      last_name: 'Edek',
      password: '123'
    },
    {
      username: 'dziki95',
      name: 'Mati',
      last_name: 'Kot',
      password: '123'
    },
    {
      username: 'ala69',
      name: 'Ala',
      last_name: 'Górka',
      password: '123'
    },
    {
      username: '3olaf',
      name: 'Olaf',
      last_name: 'Berkowicz',
      password: '123'
    },
    {
      username: 'Ka$ery',
      name: 'Ksawery',
      last_name: 'brak',
      password: '123'
    },
    {
      username: 'Natka45',
      name: 'Natalia',
      last_name: 'Lubas',
      password: '123'
    }
  ]
)

towns = Town.create(
  [
    {
      name: 'Wrocław',
      description: 'Polska dolina krzemowa i jedno z największych miast akademickich',
      photo_url: '/assets/1.jpg'
    },
    {
      name: 'Warszawa',
      description: 'Stolica Polski, centrum polskiej kultury i polityki',
      photo_url: '/assets/2.jpg'
    },
    {
      name: 'Gdańsk',
      description: 'Światowa stolica bursztynu i miasto Lecha Wałęsy',
      photo_url: '/assets/3.jpg'
    },
    {
      name: 'Kraków',
      description: 'Miasto ze smokiem i ponad tysiąc letnią historią',
      photo_url: '/assets/4.jpg'
    }
  ]
)



types = Type.create(
  [
    {
      name: 'Muzeum'
    },
    {
      name: 'Restauracja'
    },
    {
      name: 'Plac zabaw'
    },
    {
      name: 'Teatr'
    },
    {
      name: 'Filharmonia'
    },
    {
      name: 'Stadion sportowy'
    },
    {
      name: 'Kino'
    },
    {
      name: 'Park'
    },
    {
      name: 'Park rozrywki'
    },
    {
      name: 'Basen'
    }
  ]
)


places = Place.create(
  [
    {
      name: 'Muzeum Narodowe',
      address: 'Aleje Jerozolimskie 3',
	  lat:52.231625,
	  lon:21.024959 ,
      type: Type.find(1),
      town: Town.find(2),
      description: 'Największa kolekcja zbiorów w Polsce',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Bogata ekspozycja'
          },
		  {
            user: User.find(4),
            content: 'Na zwiedzenie muzeum trzeba poświęcić cały dzień'
          }
        ]
      )
    },
	{
      name: 'Muzeum Powstania Warszawskiego ',
      address: 'Grzybowska 79',
	  lat:52.232318,
	  lon:20.981153,
      type: Type.find(1),
      town: Town.find(2),
      description: 'Muzeum poświęcone pamięci Powstańców Warszawkich',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Doskonałe miejsce na wycieczki szkolne, ucząca wyprawa dla najmłodszych'
          },
		  {
            user: User.find(3),
            content: 'Zawsze wracam do tego miejsca'
          }
        ]
      )
    },
    {
      name: 'Raj w Niebie',
      address: 'Nowy Świat 21',
	  lat:52.232389,
	  lon:21.018284,
      type: Type.find(2),
      town: Town.find(2),
      description: 'Restauracja firmowana nazwiskiem Magdy Gesler',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Bogate menu'
          },
          {
            user: User.find(2),
            content: 'Niemiła obsługa, nie polecam'
          },
          {
            user: User.find(3),
            content: 'świetne miejsce na randkę'
          }
        ]
      )
    },
	 {
      name: 'Restauracja Sowa i Przyjaciele',
      address: 'Czerniakowska 179',
	  lat:52.226778,
	  lon:21.039343,
      type: Type.find(2),
      town: Town.find(2),
      description: 'Miejsce spotkań najważniejszych ludzi za czasów III RP',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Legendarne miejsce, to tu wybuchły afery Platformy xd'
          },
          {
            user: User.find(2),
            content: 'Miejsce spotkań POpaprańców i aferzystów xd'
          },
          {
            user: User.find(3),
            content: 'Bardzo dobre ośmiorniczki, na dodatek w wybornej cenie 199zł'
          }
        ]
      )
    },
    {
      name: 'Plac zabaw nadwiślański',
      address: 'Borowiecka 14',
	  lat:52.181234,
	  lon:21.159382,
      type: Type.find(3),
      town: Town.find(2),
      description: 'Największa kolekcja zbiorów w Polsce',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Bezpiecznie miejsce dla Twoich pociech'
          },
          {
            user: User.find(3),
            content: 'Polecam'
          }
        ]
      )
    },
    {
      name: 'Teatr Polski im. Arnolda Szyfmana',
      address: 'Kazimierza Karasia 2',
	  lat:52.238521,
	  lon:21.019703,
      type: Type.find(4),
      town: Town.find(2),
      description: 'Czołowi akotrzy, najlepsi polscy reżyserzy',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Może być'
          }
        ]
      )
    },
	 {
      name: 'Teatr Narodowy',
      address: 'plac Teatralny 3',
	  lat:52.243385,
	  lon:21.009340,
      type: Type.find(4),
      town: Town.find(2),
      description: 'Teatr o wieloletniej tradycji łączący tradycję z nowoczesnością',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'We wtorek otrzymaliśmy zniżki dla całej rodziny'
          },
		  {
            user: User.find(4),
            content: 'Wygodne fotele, niczego więcej mi nie trzeba'
          }
        ]
      )
    },
    {
      name: 'Filharmonia Narodowa',
      address: 'Jasna 5',
	  lat:52.234458,
	  lon:21.011281,
      type: Type.find(5),
      town: Town.find(2),
      description: 'Filharmonia zlokalizowana w centrum Warszawy',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'świetny koncert Vivaldiego'
          },
          {
            user: User.find(2),
            content: 'Niemiła obsługa, nie polecam'
          },
          {
            user: User.find(3),
            content: 'świetne miejsce na wyjście, OK'
          }
        ]
      )
    },
	{
      name: 'Stadion Narodowy',
      address: 'aleja Poniatowskiego 1',
	  lat:52.239489,
	  lon:21.045791,
      type: Type.find(6),
      town: Town.find(2),
      description: 'Oficjalny stadion polskiej reprezentacji'
    },
	{
      name: 'Stadion Laegi Warszawa',
      address: 'Łazienkowska 3',
	  lat:52.220448,
	  lon:21.040628,
      type: Type.find(6),
      town: Town.find(2),
      description: 'Oficjalny stadion wojskowego klubu Legia Warszawa'
    },
	{
      name: 'Kino Praha',
      address: 'Jagiellońska 26',
	  lat:52.251617,
	  lon:21.035634,
      type: Type.find(7),
      town: Town.find(2),
      description: 'Kino z ponad 30-letnią tradycją, idealnie dla rodzin',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Fatalne sale, niewygodne miejsca, nie POLECAM!!'
          },
          {
            user: User.find(2),
            content: 'Drogo!'
          },
          {
            user: User.find(3),
            content: 'W sam raz'
          }
        ]
      )
    },
	{
      name: 'Kino Helios',
      address: 'Legnicka 58',
	  lat:51.117956,
	  lon:16.988031,
      type: Type.find(7),
      town: Town.find(2),
      description: 'Kino spółki AGORA skierowane dla ludzi młodszych jak i starszych',
      reviews: Review.create(
        [
          {
            user: User.find(4),
            content: 'Sympatyczna obłsug, dobre seanse, Polecam!'
          },
          {
            user: User.find(3),
            content: 'Warto kupować bilety grupowe dla grup zorganizowanych'
          },
          {
            user: User.find(1),
            content: 'Może być'
          }
        ]
      )
    },
	{
      name: 'Pole Mokotowskie',
      address: 'aleja Niepodległości',
	  lat:52.210637,
	  lon:20.998437,
      type: Type.find(8),
      town: Town.find(2),
      description: 'Park mający ponad 10 akwenów wodnych oraz bogatą infrastrukturę'

    },
    {
      name: 'Family Park - Blue City',
      address: 'Aleje Jerozolimskie 179',
	  lat:52.212625,
	  lon:20.955629,
      type: Type.find(9),
      town: Town.find(2),
      description: 'Miejsce dla Ciebie i Twojego dziecka',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Długie kolejki do kas'
          },
          {
            user: User.find(2),
            content: 'Moje dziecko było usatysfakcjonowane, polecam'
          },
          {
            user: User.find(3),
            content: 'Są lepsze parki rozrywki'
          }
        ]
      )
    },
	 {
      name: 'Aquapark Varsovia',
      address: 'Wspólna 4',
	  lat:52.245776,
	  lon:21.183480,
      type: Type.find(10),
      town: Town.find(2),
      description: 'Basen sprotowy wraz z jacuzzi',
      reviews: Review.create(
        [
          {
            user: User.find(2),
            content: 'Nie polecam przychodzić weekendami - nie da się oddychać!'
          }
        ]
      )
    },
	{
      name: 'Muzeum Miejskie Wrocławia',
      address: 'Rynek 1',
	  lat:51.109562,
	  lon:17.032080,
      type: Type.find(1),
      town: Town.find(1),
      description: 'Zbiory przedstawiające przedwojenną historię Wrocławia',
      reviews: Review.create(
        [
          {
            user: User.find(3),
            content: 'Warto zobaczyć te miejsce'
          },
		  {
            user: User.find(1),
            content: 'Warte rozważenia'
          },
        ]
      )
    },
	{
      name: 'Muzeum Etnograficzne',
      address: 'Traugutta 111',
	  lat:51.099868,
	  lon:17.052993,
      type: Type.find(1),
      town: Town.find(1),
      description: 'Muzeum posiada w swojej kolekcji ponad 5000 zbiorów lokalnych artystów',
      reviews: Review.create(
        [
          {
            user: User.find(3),
            content: 'Mało znane miejsce na mapie Wrocławia, warto tam pojechać'
          },
		  {
            user: User.find(4),
            content: 'Gdyby nie ceny i godziny otwarcia byłoby super'
          },
        ]
      )
    },
    {
      name: 'Restaucracja Bohema',
      address: 'Świdnicka 22',
	  lat:51.106627,
	  lon:17.032099,
      type: Type.find(2),
      town: Town.find(1),
      description: 'Tradycyjna polska kuchnia',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Przytulne miejsce w sam raz dla dwojga'
          },
          {
            user: User.find(3),
            content: 'Zimne mięso, fatalna obsługa - może innym razem!!!'
          }
        ]
      )
    },
    {
      name: 'Plac zabaw',
      address: 'Kamienna 75',
	  lat:51.088163,
	  lon:17.032199,
      type: Type.find(3),
      town: Town.find(1),
      description: 'Osiedlowy plac zabaw na wrocławskim Biskupinie'
    },
	{
      name: 'Plac zabaw na Gądowie Małym',
      address: 'Obozowa 21',
	  lat:51.128230,
	  lon:16.966212,
      type: Type.find(3),
      town: Town.find(1),
      description: 'Osiedlowy plac zabaw na wrocławskim Trójkącie'
    },
    {
      name: 'Teatr Polski',
      address: 'Świdnicka 28',
	  lat:51.106246,
	  lon:17.031910,
      type: Type.find(4),
      town: Town.find(1),
      description: 'Samorządowa instytuacja kultury od 1949 roku',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Zankomity Hamlet, zsdecydowanie polecam się wybrać'
          },
		  {
            user: User.find(1),
            content: 'Polecam!!'
          }
        ]
      )
    },
    {
      name: 'Narodowe Forum Muzyki',
      address: 'plac Wolności 1',
	  lat:51.107049,
	  lon:17.026373,
      type: Type.find(5),
      town: Town.find(1),
      description: 'Najnowocześniejszy obiekt na kulturalnej mapie Wrocławia',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Jesteśmy pod wrażeniem z żoną, musisz tam się wybrać'
          },
          {
            user: User.find(2),
            content: 'Nie wiem co oni w tym widzą - wielki moloch '
          },
          {
            user: User.find(3),
            content: 'OK'
          }
        ]
      )
    },
	{
      name: 'Filharmonia im. Witolda Lutosławskiego',
      address: 'Piłsudkiego 79',
	  lat:51.102998,
	  lon:17.023892,
      type: Type.find(5),
      town: Town.find(1),
      description: 'Filarmonia w swoim repertuarze oferuje co miesięczne spektakle muzyki klasycznej',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'W porządku'
          },
          {
            user: User.find(2),
            content: 'Gdyby nie pluskwy to bym zachwalał to miejsce, KATASTROFA!'
          }
        ]
      )
    },
	{
      name: 'Stadion Wrocław',
      address: 'aleja Śląska 1',
	  lat:51.141224,
	  lon:16.943794,
      type: Type.find(6),
      town: Town.find(1),
      description: 'Oficjalny stadion Śląska Wrocław',
	  reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Niesamowite emocje w czasie EURO2012, niezapomne tego nigdy'
          }
        ]
      )
    },
	{
      name: 'Multikino',
      address: 'Plac Grunwaldzki 34',
	  lat:51.112568,
	  lon:17.059534,
      type: Type.find(7),
      town: Town.find(1),
      description: 'Kino mieszczące się w galerii Pasaż Grunwaldzki',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Pani obsługująca kasę o nieprzeciętnej urodzie'
          },
          {
            user: User.find(3),
            content: 'Warto zakupić bilety przez Internet, można sporo zaoszczędzić'
          }
        ]
      )
    },
	{
      name: 'Plac Strzegomski',
      address: 'Strzegomska 2',
	  lat:51.112725,
	  lon:17.005841,
      type: Type.find(8),
      town: Town.find(1),
      description: 'Plac znajdujący się na Szczepinie, z bunkrem w miejscu centralnym'

    },
	{
      name: 'Plac Wolności',
      address: 'plac Wolności 1',
	  lat:51.106941,
	  lon:17.027561,
      type: Type.find(8),
      town: Town.find(1),
      description: 'Plac poświęcony największemu polskiemu wieszczowi naradowemu',
	  reviews: Review.create(
        [
          {
            user: User.find(4),
            content: 'Nowo otwarte miejsce, piękne aranżacja i atmosfera do wieczornych spacerów'
          }
        ]
      )

    },
    {
      name: 'Park Rozrywki Maleńczuk',
      address: 'Wróblewskiego 9',
	  lat:51.104050,
	  lon:17.082149,
      type: Type.find(9),
      town: Town.find(1),
      description: 'Największa przestrzeń dla malucha w wieku od 3 do 12 lat.',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'W poniedziałki mieliśmy darmowy posiłek dla malucha, polecam'
          },
          {
            user: User.find(2),
            content: 'W toaletach odurzający odór, nikt tam nie sprząta!'
          },
          {
            user: User.find(3),
            content: 'Wszystko w porządku, po za nie miłą Panią na szatni'
          }
        ]
      )
    },
	 {
      name: 'Park Rozrywki Ola',
      address: 'Jana Długosza 59-75',
	  lat:51.135571,
	  lon:17.067604,
      type: Type.find(9),
      town: Town.find(1),
      description: 'Osiedlowy plac rozrywki dla dzieci i niemowląt',
      reviews: Review.create(
        [
          {
            user: User.find(3),
            content: 'Bardzo ciekawe gry dla dzieci, Pani animatorka się sprawdziła'
          },
          {
            user: User.find(4),
            content: 'Ciekawie prowadzone zajęcia z angielskiego dla niemowląt, wybiorę się tu drugi raz'
          }
        ]
      )
    },
	{
      name: 'Aquapark Wrocław',
      address: 'Borowska 99',
	  lat:51.091087,
	  lon:17.032278,
      type: Type.find(10),
      town: Town.find(1),
      description: 'Największy park wodny na Dolnym Sląsku',
      reviews: Review.create(
        [
          {
            user: User.find(2),
            content: 'Niesamowite zjeżdżalnie na które trzeba długo czekać'
          },
		  {
            user: User.find(3),
            content: 'Byłem tam z dziewcyzną, była zadowolona'
          }
        ]
      )
    },
	{
      name: 'Aquapark przy Szkole Podstawowej nr 15',
      address: 'Wieczysta 105',
	  lat:51.086291,
	  lon:17.039081,
      type: Type.find(10),
      town: Town.find(1),
      description: 'Nowoczesny i innowacyjny basen sportowy wybudowany w 2012 roku',
    },
	{
      name: 'Muzeum II wojny światowej',
      address: 'Plac Władysława Bartoszewskiego 1',
	  lat:54.356048,
	  lon:18.660520,
      type: Type.find(1),
      town: Town.find(3),
      description: 'Największa muzeum hisotryczne w Polsce przedstawiające martyrologie Polaków',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Szkoda,że zmieniono ekspozycja, poprzednia była lepsza'
          }
        ]
      )
    },
    {
      name: 'Restauracja Neptun',
      address: 'Długa 33',
	  lat:54.348773,
	  lon:18.651678,
      type: Type.find(2),
      town: Town.find(3),
      description: 'Restauracja firmowana nazwiskiem Magdy Gesler',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Ubogie, nieczytelne menu'
          },
          {
            user: User.find(2),
            content: 'Miła obsługa, nie polecam'
          },
          {
            user: User.find(3),
            content: 'Swietne miejsce na spotkanie rodzinne'
          }
        ]
      )
    },
     {
      name: 'Plac zabaw',
      address: 'Skłodowskiej 18',
	  lat:54.360802,
	  lon:18.592520,
      type: Type.find(3),
      town: Town.find(3),
      description: 'Osiedlowy plac zabaw'

    },
    {
      name: 'Teatr Wybrzeże',
      address: 'Świętego Ducha 2',
	  lat:54.351060,
	  lon:18.648497,
      type: Type.find(4),
      town: Town.find(3),
      description: 'Teatr lalek, jedyny taki na Pomorzu',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Warto tam się wybrać z dziećmi'
          },
		  {
            user: User.find(1),
            content: 'Nuda! Odradzam!'
          }
        ]
      )
    },
	{
      name: 'Teatr Leśny',
      address: 'Jaśkowa Dolina 45',
	  lat:54.372647,
	  lon:18.595692,
      type: Type.find(4),
      town: Town.find(3),
      description: 'Teatr oferujący spekatkle z kalejdoskpem gwiazd, na rynku od 2003',
      reviews: Review.create(
        [
          {
            user: User.find(3),
            content: 'Warto tam się wybrać dla Bogusia Lindy, kocham go <3'
          },
		  {
            user: User.find(4),
            content: 'Oszuści, nie chcieli oddać mi pieniędzy za anuowany spektakl'
          }
        ]
      )
    },
    {
      name: 'Filharmonia Bałtycka',
      address: 'Ołowianka 1',
	  lat:54.352399,
	  lon:18.659678,
      type: Type.find(5),
      town: Town.find(3),
      description: 'Filharmonia o długoletniej tradycji, mająca europejską renomę',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Spędziliśmy tutaj świetny Sylwester, KLASA!'
          },
          {
            user: User.find(2),
            content: 'Miła obsługa, polecam'
          },
          {
            user: User.find(3),
            content: 'OK'
          }
        ]
      )
    },
	{
      name: 'Stadion Energa Gdańska',
      address: 'Pokoleń Lechii Gdańsk 1',
	  lat:54.390091,
	  lon:18.639297,
      type: Type.find(6),
      town: Town.find(3),
      description: 'Oficjalny stadion Lechi Gdańsk o pojemności 43 000 widzów'
    },
	{
      name: 'Cinema City',
      address: 'Karmelicka 1',
	  lat:54.354851,
	  lon:18.646457,
      type: Type.find(7),
      town: Town.find(3),
      description: 'Komercyjne kino z bogatym repertuarem'

    },
	{
      name: 'Kino 7D',
      address: 'Tkacka 17/18',
	  lat:54.349778,
	  lon:18.649064,
      type: Type.find(7),
      town: Town.find(3),
      description: 'Miejskie kino oferujące przedstawienia i filme w 7 wymiarach',
	    reviews: Review.create(
        [
          {
            user: User.find(4),
            content: 'Zawsze tutaj wracam ze względu na sentyment do tego miejsca'
          },
          {
            user: User.find(2),
            content: 'Nieprzyjemny odór, obiekt nieremnotowany od lat'
          },
          {
            user: User.find(3),
            content: 'Wstyd, toalety płatne mimo zakupionego biletu!!'
          }
        ]
      )

    },
	{
      name: 'Park Oruński',
      address: 'Raduńska',
	  lat:54.322414,
	  lon:18.626561,
      type: Type.find(8),
      town: Town.find(3),
      description: 'Park położony przy ujści Wisły, pod patronatem Ministerswa Środowiska'

    },
	{
      name: 'Park Jelitkowski',
      address: 'Jelitkowska 13',
	  lat:54.425141,
	  lon:18.594479,
      type: Type.find(8),
      town: Town.find(3),
      description: 'Park położony na zachodniej części Gdańska o powierzchni 4ha'
    },
    {
      name: 'Park rozrywki Amber',
      address: 'aleja Grunwaldzka 229',
	  lat:54.390618,
	  lon:18.587585,
      type: Type.find(9),
      town: Town.find(3),
      description: 'Park rozyrywki znajdującej się w przedwojennej fabryce cegieł',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'ŻENADA'
          },
          {
            user: User.find(2),
            content: 'Uciekać, nie miłe panie animagtorki'
          },
          {
            user: User.find(3),
            content: 'Są lepsze parki rozrywki, zdecydowanie omijać'
          }
        ]
      )
    },
	 {
      name: 'Aquapark Gdańsk',
      address: 'Zamkowa Góra 3-5',
	  lat:54.459992,
	  lon:18.557865,
      type: Type.find(10),
      town: Town.find(3),
      description: 'Basen sprotowy wraz z jacuzzi',
      reviews: Review.create(
        [
          {
            user: User.find(2),
            content: 'Po raz kolejny jestem zadowolony'
          },
		  {
            user: User.find(3),
            content: 'Nie można płacić kartą'
          }
        ]
      )
    },
	 {
      name: 'Aquapark Bursztyn',
      address: 'aleja Zwycięstwa 12',
	  lat:54.370243,
	  lon:18.631619,
      type: Type.find(10),
      town: Town.find(3),
      description: 'Basen odnowy biologicznej z wodami termalnymi',
      reviews: Review.create(
        [
          {
            user: User.find(2),
            content: 'Tylko dla starszych ludzi, brak jakichkolwiek młodych i atrakcyjnych kobiet'
          },
		  {
            user: User.find(3),
            content: 'Płatność tylko gotówką!'
          },
		  {
            user: User.find(4),
            content: 'Trzeba uważać na czas, za przekrozenie dotkliwe kary'
          }
        ]
      )
    },
	{
      name: 'Muzeum Krakowskie',
      address: 'Krupnicza 26',
	  lat:50.063343,
	  lon:19.928308,
      type: Type.find(1),
      town: Town.find(4),
      description: 'Zbiory przedstawiające średniowieczny Kraków',
      reviews: Review.create(
        [
          {
            user: User.find(3),
            content: 'Warto zobaczyć te miejsce'
          },
		  {
            user: User.find(1),
            content: 'Warte rozważenia'
          },
        ]
      )
    },
    {
      name: 'Restaucracja Wawel',
      address: 'Wawelska 3',
	  lat:50.053253,
	  lon:19.934556,
      type: Type.find(2),
      town: Town.find(4),
      description: 'Ekskluzywna restauracja znajdująca się pod samym zamkiem Wawelskim',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Snobystyczne miejsce dla Panów w przyciasnych spodniach'
          },
          {
            user: User.find(2),
            content: 'Tak powinna wyglądać resturacja'
          }
        ]
      )
    },
	{
      name: 'Restaucracja Krakus',
      address: 'Limanowskiego 16',
	  lat:50.044913,
	  lon:19.953066,
      type: Type.find(2),
      town: Town.find(4),
      description: 'Restauracja serwująca dania orientalne',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Nie mam dobrych wspomnień z tym miejscem, dziewczyna uciekła jak zobaczyła nasze danie'
          },
          {
            user: User.find(2),
            content: 'Unikać jak ognia, niemiła obsługa i wymuszają niegodziwe napiwki'
          }
        ]
      )
    },
	{
      name: 'Restaucracja Orient',
      address: 'Sławkowska 13',
	  lat:50.064296,
	  lon:19.938010,
      type: Type.find(2),
      town: Town.find(4),
      description: 'Restauracja serwująca oryginalny Kebab turecki',
      reviews: Review.create(
        [
          {
            user: User.find(4),
            content: 'Dobre miejsce na gastro po imprezie, pełno pijanych ludzi tutaj'
          },
          {
            user: User.find(3),
            content: 'Dużo pijanych ludzi tutaj, to nie restuaracja a melina'
          }
        ]
      )
    },
     {
      name: 'Plac zabaw Krakusek',
      address: 'Podzamcza 72',
	  lat:50.061261,
	  lon:19.916487,
      type: Type.find(3),
      town: Town.find(4),
      description: 'Osiedlowy plac zabaw dla dzieci w wieku 8-14 lat'
    },
    {
      name: 'Teatr Współczesny',
      address: 'Starowiślna 21',
	  lat:50.057240,
	  lon:19.944380,
      type: Type.find(4),
      town: Town.find(4),
      description: 'Teatr przy ul.Krakowskiej mający 100 letnią rodzinną tradycję',
      reviews: Review.create(
        [
          {
            user: User.find(2),
            content: 'Zankomity, często uaktualniany repertuar'
          },
		  {
            user: User.find(3),
            content: 'OK'
          }
        ]
      )
    },
    {
      name: 'Filharmonia Krakowska',
      address: 'Zwierzyniecka 1',
	  lat:50.058910,
	  lon: 19.932978,
      type: Type.find(5),
      town: Town.find(4),
      description: 'Najstarsza filharmonia w Polsce o długoletniej tradycji',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Musisz tam się wybrać!'
          },
          {
            user: User.find(3),
            content: 'Bez szału, bywałem w lepszych filharmoniach'
          }
        ]
      )
    },
	{
      name: 'Stadion Wisły Kraków',
      address: 'Reymonta 22',
	  lat:50.063714,
	  lon:19.911788,
      type: Type.find(6),
      town: Town.find(4),
      description: 'Oficjalny stadion krakowskiej Wisły',
	  reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Nie przychodzić jak jesteś z innego miasta, można dostać niezły wpier!@#'
          }
        ]
      )
    },
	{
      name: 'Kino ARS',
      address: 'Św. Tomasza 11',
	  lat:50.063202,
	  lon:19.938411,
      type: Type.find(7),
      town: Town.find(4),
      description: 'Kino mieszczące się przy Galeri Krakowskiej',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Wysokie ceny jak na kino, zapłaciłem za dwie osoby ponad 40 zł'
          },
          {
            user: User.find(2),
            content: 'Oszukują przy obłsudze gastronomicznej, uważać!'
          }
        ]
      )
    },
	{
      name: 'Park Strzelecki',
      address: 'Zygmunta Augusta 7',
	  lat:50.065925,
	  lon:19.950118,
      type: Type.find(8),
      town: Town.find(4),
      description: 'Park mieszczący się obok Biznes Parku'

    },
	{
      name: 'Park Jordana',
      address: 'aleja 3 Maja 11',
	  lat:50.063424,
	  lon:19.916257,
      type: Type.find(8),
      town: Town.find(4),
      description: 'Park otwarty w ciągu dnia dla wszsytkich mieszkańców Krakowa',
	  reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'To nonsens,że nie można tutaj przychodzić w nocy, mogłby być tak pięknie'
          },
          {
            user: User.find(3),
            content: 'Uwaga, w nocy można trafić tutaj na NIECIEKAWE przypadki zachowań'
          },
		  {
            user: User.find(4),
            content: 'Idealne miesjce na lunch i kawę z najbliższymi'
          }
        ]
      )

    },
    {
      name: 'Park Rozrywki Krakus',
      address: 'Stanisława Żółkiewskiego 17',
	  lat:50.059328,
	  lon:19.957961,
      type: Type.find(9),
      town: Town.find(4),
      description: 'Park rozrywki dla dorosłych - paintball, gokarty, wirtualna rzecywistość',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Gokarty - coś niezwykłego'
          },
          {
            user: User.find(3),
            content: 'Warto wybrać się ze znajomymi'
          }
        ]
      )
    },
	 {
      name: 'Aquapark Kraków',
      address: 'Dobrego Pasterza 126',
	  lat:50.088965,
	  lon:19.982937,
      type: Type.find(10),
      town: Town.find(4),
      description: 'Największy park wodny w Małopolsce',
      reviews: Review.create(
        [
          {
            user: User.find(2),
            content: 'Niesamowite zjeżdżalnie!!!'
          },
		  {
            user: User.find(3),
            content: 'Idealne miejsce dla rodziny'
          }
        ]
      )
    },
  ]
)
