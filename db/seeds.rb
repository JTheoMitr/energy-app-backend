# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.destroy_all
Energy.destroy_all

solar = Energy.create(name: 'solar')
wind = Energy.create(name: 'wind')
hydro = Energy.create(name: 'hydropower')
geo = Energy.create(name: 'geothermal')

wells = Company.create(name: 'Wells Solar', location: 'Austin, TX', description: 'Wells Solar is a family-owned company serving the great state of Texas. With an emphasis on high-quality solar at an affordable price, we’re dedicated to providing the best solar power solutions and electrical services to customers, both residential and commercial.', employee_count: 265, website: 'https://wellssolar.com/', energy: solar)
jinko = Company.create(name: 'JinkoSolar Holding Co.', location: 'Shanghai, China', description: 'JinkoSolar Holding Co., Ltd. is currently the largest solar panel manufacturer wolrd-wide, shipping 11.4 GW of modules in 2018. Headquartered in Shanghai, China, the company started out as a wafer manufacturer in 2006 and went public on the New York Stock Exchange in 2010.', employee_count: 13500, website: 'https://jinkosolar.us/', energy: solar)
abo = Company.create(name: 'ABO Wind', location: 'Wiesbaden, Germany', description: 'ABO Wind is a globally successful project developer for renewable energies with more than 700 employees. Since 1996, the company has developed and sold wind energy, solar and biogas projects with an output of 3,500 megawatts, more than 1,500 of them as turnkey projects.', employee_count: 700, website: 'https://www.abo-wind.com/en/', energy: wind)
electratherm = Company.create(name: 'ElectraTherm', location: 'Flowery Branch, Georgia', description: 'We are a global leader in low temperature waste heat recovery, providing simple and effective solutions that boost efficiency while reducing energy costs and emissions.', employee_count: 1200, website: 'https://electratherm.com/', energy: geo)