# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Loading Categories..."
categories = Category.create([ { name: 'Advertising' }, 
  { name: 'Reference Material' }, { name: 'Communication Expense' }, 
  { name: 'Taxi/Car Rental' }, { name: 'Professional Research' }, 
  { name: 'Professional Publications' }, { name: 'Professional Memberships' }, 
  { name: 'Professional Fees' }, { name: 'Professional Education' }, 
  { name: 'Professional Expenses' }, { name: 'Other Expenses' }, 
  { name: 'Agent and Manager Fees' }, ])

puts "Loading Expense Classes..."
advertising = ExpenseClass.create([ { name: 'Business Supplies', category: categories[0] },
                  { name: 'Photos and Resumes', category: categories[0] },
                  { name: 'Postage, FedEx, Delivery', category: categories[0] },
                  { name: 'Demos', category: categories[0] },
                  { name: 'Promo Tickets/Website', category: categories[0] },
                  { name: 'Other Advertising', category: categories[0] } ])

reference = ExpenseClass.create([ { name: 'Reference Books, Scripts, Plays', category: categories[1] },
                  { name: 'Sheet Music', category: categories[1] },
                  { name: 'Audio Reference, CDs, iTunes', category: categories[1] },
                  { name: 'Visual Reference & DVDs', category: categories[1] } ])

communication = ExpenseClass.create([ { name: 'Cellular Phone', category: categories[2] },
                  { name: 'Answering Service, Pager', category: categories[2] },
                  { name: 'Home Phone Business Use', category: categories[2] } ])

transport = ExpenseClass.create([ { name: 'Taxis & Limos', category: categories[3] },
                  { name: 'Subway & public transport', category: categories[3] },
                  { name: 'Other Local Travel', category: categories[3] } ])

research = ExpenseClass.create([ { name: 'Video & DVD Rentals', category: categories[4] },
                  { name: 'Cable TV', category: categories[4] },
                  { name: 'Live Theatre Tickets', category: categories[4] },
                  { name: 'Movies', category: categories[4] },
                  { name: 'Concerts & Museums', category: categories[4] },
                  { name: 'Internet Access Charges', category: categories[4] },
                  { name: 'Other Research', category: categories[4] } ])

publications = ExpenseClass.create([ { name: 'Backstage', category: categories[5] },
                  { name: 'Variety', category: categories[5] },
                  { name: 'Ross Reports', category: categories[5] },
                  { name: 'Other', category: categories[5] } ])

memberships = ExpenseClass.create([ { name: 'SAG', category: categories[6] },
                  { name: 'AFTRA', category: categories[6] },
                  { name: 'AEA', category: categories[6] },
                  { name: 'AEA % Dues', category: categories[6] },
                  { name: 'Other Prof. Memberships', category: categories[6] } ])

fees = ExpenseClass.create([ { name: 'SAG', category: categories[7] },
                  { name: 'AFTRA', category: categories[7] } ])

education = ExpenseClass.create([ { name: 'Acting Lessons', category: categories[8] },
                  { name: 'Voice Lessons', category: categories[8] },
                  { name: 'Dance Lessons', category: categories[8] },
                  { name: 'Conferences & Seminars', category: categories[8] } ])

expenses = ExpenseClass.create([ { name: 'Dancewear & Shoes', category: categories[9] },
                  { name: 'Costumes & Props', category: categories[9] },
                  { name: 'Costume/Dancewear cleaning', category: categories[9] },
                  { name: 'Makeup & Hair', category: categories[9] },
                  { name: 'Backstage Tips', category: categories[9] } ])

other_expenses = ExpenseClass.create([ { name: 'Equipment/Instrument Repair', category: categories[10] },
                  { name: 'Rehearsal Studios', category: categories[10] },
                  { name: 'Accompaniests/Musicians', category: categories[10] },
                  { name: 'Hired Labor/Contract Labor', category: categories[10] } ])

agent = ExpenseClass.create([ { name: 'Agent & Manager Fees', category: categories[11] } ])

puts "Seed Data Loaded."