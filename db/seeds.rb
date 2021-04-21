# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

solar = Energy.create(name: 'solar')
wind = Energy.create(name: 'wind')
hydro = Energy.create(name: 'hydropower')
geo = Energy.create(name: 'geothermal')

wells = Company.create(name: 'Wells Solar', location: 'Austin, TX', description: 'Wells Solar is a family-owned company serving the great state of Texas. With an emphasis on high-quality solar at an affordable price, we’re dedicated to providing the best solar power solutions and electrical services to customers, both residential and commercial.', employee_count: 265, energy: solar)
