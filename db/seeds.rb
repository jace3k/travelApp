# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


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
      description: 'Fajne miasto. Dużo atrakcji bla bla.'
    },
    {
      name: 'Kraków',
      description: 'Miasto ze smokiem i smogiem.'
    }
  ]
)

trips = Trip.create(
  [
    {
      start_date: '30/10/2016',
      end_date: '30/10/2017',
      name: 'Podroż w nieznane'
    },
    {
      start_date: '20/10/2016',
      end_date: '10/10/2017',
      name: 'Wyprawa po ziolo'
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
      name: 'Kupka'
    }
  ]
)


places = Place.create(
  [
    {
      name: 'Muzeum narodowe',
      coords: '123 123',
      type: types.find(1).first,
      town: towns.last,
      description: 'Znajdziesz tutaj wiele ciekawych eksponatow.'
    }
  ]
)
