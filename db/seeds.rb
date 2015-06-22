# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts '********** creation of Manager user *********'
user =  User.new(email: "chitragupt.deepankan@gmail.com",password: "password1",role: "manager")
puts user.save ? "chitragupt.deepankan@gmail.com manager created" : 'chitragupt.deepankan@gmail.com manager cant create'
puts '********** End of creation of Manager user *********'
