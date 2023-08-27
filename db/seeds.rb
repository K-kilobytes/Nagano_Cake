# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create!(
   name: 'ケーキ',
)

item1 = Item.create!(
   unit_price: '100',
   name: 'テストクリスマスケーキ',
   genre_id: 1
)

item1.image.attach(io: File.open(Rails.root.join('app/assets/images/christmas_cake.png')), filename: 'christmas_cake.png')

item2 = Item.create!(
   unit_price: '200',
   name: 'テストチョコケーキ',
   genre_id: 1
)

item2.image.attach(io: File.open(Rails.root.join('app/assets/images/sweets_chocolate_cake_sachertorte.png')), filename: 'sweets_chocolate_cake_sachertorte.png')
