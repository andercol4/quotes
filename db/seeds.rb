# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  admin = User.where(email: 'admin@example.com').first || User.new(email: 'admin@example.com', first_name: 'Admin', last_name: 'User', admin: true)
  admin.password = 'password'
  admin.save(validate: false)

  user = User.where(email: 'user@example.com').first || User.new(email: 'user@example.com', first_name: 'Regular', last_name: 'User', admin: false)
  user.password = 'password'
  user.save(validate: false)
end
