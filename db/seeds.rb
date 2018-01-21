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
      name: 'Muzeum narodowe',
      address: 'Aleje Jerozolimskie 3',
      type: Type.find(1),
      town: Town.find(2),
      description: 'Największa kolekcja zbiorów w Polsce',
      reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Bogata ekspozycja'
          }
        ]
      )
    },
    {
      name: 'Restaucracja Raj',
      address: 'Planu 6-letniego 4',
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
      name: 'Plac zabaw na nadwiślański',
      address: 'Narutowicza 34',
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
      name: 'Teatr Polski',
      address: 'Lecha Kaczyńskiego 156',
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
      name: 'Filharmonia Warszawska',
      address: 'Grunwaldzka 34',
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
      type: Type.find(6),
      town: Town.find(2),
      description: 'Oficjalny stadion polskiej reprezentacji'
    },
	{
      name: 'Kino Polonia',
      address: 'Racławicka 194',
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
      name: 'Park Mokotowski',
      address: 'Grobelna 3',
      type: Type.find(8),
      town: Town.find(2),
      description: 'Park mający ponad 10 akwenów wodnych oraz bogatą infrastrukturę'

    },
    {
      name: 'Family Park - Galeria Mokotów',
      address: 'Wiślana 154',
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
      address: 'Kujawska 92',
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
      address: 'Śląska 34',
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
      name: 'Restaucracja Bohema',
      address: 'Ugory 172',
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
      address: 'Majowa 91',
      type: Type.find(3),
      town: Town.find(1),
      description: 'Osiedlowy plac zabaw na wrocławskim Biskupinie'
    },
    {
      name: 'Teatr Polski',
      address: 'Siedleckiego 92',
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
      address: 'Sobieskiego 56',
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
      name: 'Stadion Wrocław',
      address: 'aleja Śląska 1',
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
      type: Type.find(8),
      town: Town.find(1),
      description: 'Plac znajdujący się na Szczepinie, z bunkrem w miejscu centralnym'

    },
    {
      name: 'Park Rozrywki Maleńczuk',
      address: 'Wesoła 112',
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
      name: 'Aquapark Wrocław',
      address: 'Borowska 99',
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
      name: 'Muzeum II wojny światowej',
      address: 'Wałęsy 82',
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
      address: 'Stare Miasto 4',
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
      type: Type.find(3),
      town: Town.find(3),
      description: 'Osiedlowy plac zabaw'

    },
    {
      name: 'Teatr Bałtycki',
      address: 'Bałycka 23',
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
      name: 'Filharmonia Pomorska',
      address: 'Pomorska 121',
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
      type: Type.find(6),
      town: Town.find(3),
      description: 'Oficjalny stadion Lechi Gdańsk o pojemności 43 000 widzów'
    },
	{
      name: 'Cinema City',
      address: 'Śliczna 81',
      type: Type.find(7),
      town: Town.find(3),
      description: 'Komercyjne kino z bogatym repertuarem'

    },
	{
      name: 'Park Wiślański',
      address: 'Wrońskiego 25',
      type: Type.find(8),
      town: Town.find(3),
      description: 'Park położony przy ujści Wisły, pod patronatem Ministerswa Środowiska'

    },
    {
      name: 'Park rozrywki Amber',
      address: 'Lema 2',
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
      name: 'Muzeum Krakowskie',
      address: 'Jagiellońska 3',
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
      name: 'Plac zabaw Krakusek',
      address: 'Podzamcza 72',
      type: Type.find(3),
      town: Town.find(4),
      description: 'Osiedlowy plac zabaw dla dzieci w wieku 8-14 lat'
    },
    {
      name: 'Teatr Krakowski',
      address: 'Krakowska 23',
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
      address: 'Krakowska 1',
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
      address: 'Reymana 12',
      type: Type.find(6),
      town: Town.find(4),
      description: 'Oficjalny stadion krakowskiej Wisły',
	  reviews: Review.create(
        [
          {
            user: User.find(1),
            content: 'Nie przychod jak jesteś z innego miasta, można dostać niezły wpier!@#'
          }
        ]
      )
    },
	{
      name: 'Kino Polonia',
      address: 'Serbska 24',
      type: Type.find(7),
      town: Town.find(4),
      description: 'Kino mieszczące się w Galeri Krakowskiej',
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
      name: 'Park',
      address: 'Gdańska 67',
      type: Type.find(8),
      town: Town.find(4),
      description: 'Park mieszczący się obok Biznes Parku'

    },
    {
      name: 'Park Rozrywki Krakus',
      address: 'Chorwacka 91',
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
      address: 'Alpejska 21',
      type: Type.find(10),
      town: Town.find(4),
      description: 'Największy park wodny na Dolnym Sląsku',
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
