# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# t.string "name"
# t.string "place"
# t.integer "number"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# Food.create(name: "ラーメン",description:"中国から伝わった")
# Food.create(name: "寿司",description:"日本独特の文化")
#t.string "login_id"
#t.string "password"
Login.create(login_id: "kimura",password:"taiti")
Login.create(login_id: "sara",password:"1234")


