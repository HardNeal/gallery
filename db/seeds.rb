# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = User.create!(name: 'Superadmin', email: 'admin@m.r', password: 'adminadmin', password_confirmation: 'adminadmin', admin: true)

user = User.create!(name: 'Simpleuser', email: 'user@m.r', password: 'useruser', password_confirmation: 'useruser', admin: true )

gallery = Photo.create!(name: 'LikeaPanda', desc: 'panda panda panda x6 like a panda', user_id: User.last.id, image: File.new("app/assets/other/panda.jpg"))

gallery = Photo.create!(name: 'LikeaBeer', desc: 'beeer beer beer beer ladaPriora like a beer', user_id: User.last.id, image: File.new("app/assets/other/bear.jpg"))

gallery = Photo.create!(name: 'LikeaPanda', desc: 'panda panda panda x6 like a panda', user_id: User.last.id, image: File.new("app/assets/other/second.jpg"))
