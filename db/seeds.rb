# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all

require 'faker'

20.times do
  Item.create(
    title: Faker::Games::Pokemon.name,
    description: Faker::TvShows::Kaamelott.quote,
    price: Faker::Number.decimal(l_digits: 2),
    image_url: "https://pokemonletsgo.pokemon.com/assets/img/common/char-eevee.png"
  )

end

