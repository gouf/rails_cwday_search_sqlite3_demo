# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
# Set seed data for working with example code
#
User.destroy_all

10.times do
  name = ('a'..'z').to_a.sample(8).join
  User.create(name: name)
end

user = User.all

%w[
  2017-01-01
  2017-01-02
  2017-01-03
  2017-01-04
  2017-01-05
  2017-01-06
  2017-01-07
  2017-01-08
  2017-01-09
  2017-01-10
].each_with_index do |date, i|
  user[i].update(updated_at: date)
end
