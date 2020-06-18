# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Apartment::Tenant.current == 'public'
  PASSWORD = 'password'.freeze
  Client.create(tenant_name: 'abc')
end

user = User.create(
  first_name: Apartment::Tenant.current,
  last_name: 'admin',
  email: "admin@#{Apartment::Tenant.current}.com",
  password: PASSWORD,
  password_confirmation: PASSWORD
)

user.add_role :admin
