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
