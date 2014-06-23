# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

9.times do |forum|
  Forum.create(
    {
      name: Faker::Lorem.sentence,
    }
  )
end

200.times do |comment|
  Comment.create(
    {
      content: Faker::Lorem.paragraph,
      user_name: Faker::Name.name,
      forum_id: Faker::Number.digit
    })
end
# Forum.create(name: 'The never ending belly')
# Forum.create(name: 'Baby Dish Soap?')
# Forum.create(name: 'How much does your baby weigh')
# Forum.create(name: 'Forgiving DF')
# Forum.create(name: 'Beware...cuteness overload!')
# Forum.create(name: 'Baby name disagreement')
# Forum.create(name: 'Sorry if this is harsh...')
# Forum.create(name: 'Does this seem odd?')
# Forum.create(name: 'Dude!')
# Forum.create(name: 'Dudeman Sup!')
# Forum.create(name: 'Dudeman Sup Dude!')
# Forum.create(name: 'I am just')
# Forum.create(name: 'Trying to fill my')
# Forum.create(name: 'Forum database to have')
# Forum.create(name: 'Many......')
# Forum.create(name: 'Many..........')
# Forum.create(name: 'Forums that can be searched')
# Forum.create(name: 'But it is going to be ')
# Forum.create(name: 'A lot of typing and whatnot')
# Forum.create(name: 'To successfully get')
# Forum.create(name: 'The database seeded')
# Forum.create(name: 'to allow a rather big list')
# Forum.create(name: 'To be searched ')
# Forum.create(name: 'Where it will show the ')
# Forum.create(name: 'Cool benefits that')
# Forum.create(name: 'Integrating AngularJS')
# Forum.create(name: 'Into a Rails environment')
# Forum.create(name: 'Im getting super tired' )
# Forum.create(name: 'Of typing though')
# Forum.create(name: 'So I am ')
# Forum.create(name: 'Done!')
# Forum.create(name: 'BOOM!')

# comments_list = [
#   ["One-piece outfits (5 to 7)", 1, 1],
#   ["Shirts (5 to 7)", 1, 4],
#   ["Leggins or pull-on pants (5 to 7)", 1, 6],
#   ["Outer layers (5)", 1, 1],
#   ["Hats (2)", 1, 5],
#   ["Socks and booties", 1, 6],
#   ["Mittens and snowsuit", 1, 1],
#   ["Pajamas/sleepers (5 to 7)", 1, 6],
#   ["Diapers", 2, 1],
#   ["Wipes", 2, 1],
#   ["Diaper rash cream", 2, 5],
#   ["Diaper bag", 2, 1],
#   ["Diaper pail and liners", 2, 1],
#   ["Baby carrier, sling, or wrap", 3, 4],
#   ["Stroller", 3, 6],
#   ["Car seat", 3, 1],
#   ["Pack'n play or portable crib", 3, 6],
#   ["Stroller sack to keep your baby warm in the stroller or car seat", 3, 1],
#   ["Nursing/feeding pillow", 4, 1],
#   ["Breastfeeding wrap or cover", 4, 1],
#   ["Breastfeeding supplies like lanolin ointment, hot/cold gel packs, and breast pads", 4, 6],
#   ["Breast pump (if pumping)", 4, 5],
#   ["Pumping supplies like breast milk storage bags, a soft cooler bag, and ice packs", 4, 1],
#   ["Burp cloths (6 to 12)", 4, 6],
#   ["Bottles (4 to 6)", 4, 1],
#   ["Bottle brushes (2)", 4, 1],
#   ["Formula (if formula feeding)", 4, 5],
#   ["Bottle-drying rack", 4, 5],
#   ["Dishwasher basket for bottle parts", 4, 1],
#   ["Bottle warmer", 4, 1],
#   ["Saftey gates", 5, 1],
#   ["Outlet covers for electrical outlets", 5, 6],
#   ["Cupboard and drawer latches", 5, 1],
#   ["Toilet seat locks", 5, 1],
#   ["Baby monitor", 5, 5],
#   ["Highchair", 6, 5],
#   ["Bowls (3 to 5)", 6, 1],
#   ["Baby spoons (2 to 3)", 6, 1],
#   ["Sippy cups (3 to 5)", 6, 6],
#   ["Bibs (3 to 5)", 6, 4],
#   ["Splat mat for under your baby's highchair", 6, 6],
#   ["Equipment for making your own baby food", 6, 4],
#   ["Pacifiers (2 to 4)", 7, 6],
#   ["Bouncy seat", 7, 1],
#   ["Play mat/gym", 7, 6],
#   ["Infant swing", 7, 1],
#   ["Doorway jumper", 7, 6],
#   ["Activity center", 7, 1],
#   ["Toys", 7, 1],
#   ["Books", 7, 1],
#   ["Wearable blankets (2 to 3)", 8, 6],
#   ["Swaddling blankets (3)", 8, 5],
#   ["White-noise machine", 8, 1],
#   ["Nightlight", 8, 5],
#   ["Crib sheets (3 to 5)", 8, 1],
#   ["Waterproof mattress pad", 8, 1],
#   ["Baby bathtub", 9, 1],
#   ["Hooded bath towels (2)", 9, 1],
#   ["Washcloths (5 to 7)", 9, 1],
#   ["Baby shampoo or body wash", 9], 
#   ["Changing table or pad", 10, 1],
#   ["Crib and mattress", 10, 5],
#   ["Bassinet or cradle", 10, 1],
#   ["Glider or rocker", 10, 4],
#   ["Mobile", 10, 4],
#   ["First-aid kit", 11, 4],
#   ["Bulb syringe", 11, 1],
#   ["Teething toys", 11, 1],
#   ["Digital thermometer", 11, 1],
#   ["Baby nail scissors or clippers", 11, 6],
#   ["Baby-friendly laundry detergent", 11, 1],
#   ["A soft-bristled baby brush", 11, 6],
# ]

# comments_list.each do | content, forum_id, user_id |
#   Comment.create( content: content, forum_id: forum_id, user_id: user_id )
# end
# Group.create!(title: 'Clothing')
# Group.create!(title: 'Diapers')
# Group.create!(title: 'Baby Gear')
# Group.create!(title: 'Breastfeeding')
# Group.create!(title: 'Saftey')
# Group.create!(title: 'Feeding')
# Group.create!(title: 'Soothing')
# Group.create!(title: 'Sleeping')
# Group.create!(title: 'Bathing')
# Group.create!(title: 'Nursery')
# Group.create!(title: 'Health')

# group_list = [
#   ["One-piece outfits (5 to 7)", 1],
#   ["Shirts (5 to 7)", 1],
#   ["Leggins or pull-on pants (5 to 7)", 1],
#   ["Outer layers (5)", 1],
#   ["Hats (2)", 1],
#   ["Socks and booties", 1],
#   ["Mittens and snowsuit", 1],
#   ["Pajamas/sleepers (5 to 7)", 1],
#   ["Diapers", 2],
#   ["Wipes", 2],
#   ["Diaper rash cream", 2],
#   ["Diaper bag", 2],
#   ["Diaper pail and liners", 2],
#   ["Baby carrier, sling, or wrap", 3],
#   ["Stroller", 3],
#   ["Car seat", 3],
#   ["Pack'n play or portable crib", 3],
#   ["Stroller sack to keep your baby warm in the stroller or car seat", 3],
#   ["Nursing/feeding pillow", 4],
#   ["Breastfeeding wrap or cover", 4],
#   ["Breastfeeding supplies like lanolin ointment, hot/cold gel packs, and breast pads", 4],
#   ["Breast pump (if pumping)", 4],
#   ["Pumping supplies like breast milk storage bags, a soft cooler bag, and ice packs", 4],
#   ["Burp cloths (6 to 12)", 4],
#   ["Bottles (4 to 6)", 4],
#   ["Bottle brushes (2)", 4],
#   ["Formula (if formula feeding)", 4],
#   ["Bottle-drying rack", 4],
#   ["Dishwasher basket for bottle parts", 4],
#   ["Bottle warmer", 4],
#   ["Saftey gates", 5],
#   ["Outlet covers for electrical outlets", 5],
#   ["Cupboard and drawer latches", 5],
#   ["Toilet seat locks", 5],
#   ["Baby monitor", 5],
#   ["Highchair", 6],
#   ["Bowls (3 to 5)", 6],
#   ["Baby spoons (2 to 3)", 6],
#   ["Sippy cups (3 to 5)", 6],
#   ["Bibs (3 to 5)", 6],
#   ["Splat mat for under your baby's highchair", 6],
#   ["Equipment for making your own baby food", 6],
#   ["Pacifiers (2 to 4)", 7],
#   ["Bouncy seat", 7],
#   ["Play mat/gym", 7],
#   ["Infant swing", 7],
#   ["Doorway jumper", 7],
#   ["Activity center", 7],
#   ["Toys", 7],
#   ["Books", 7],
#   ["Wearable blankets (2 to 3)", 8],
#   ["Swaddling blankets (3)", 8],
#   ["White-noise machine", 8],
#   ["Nightlight", 8],
#   ["Crib sheets (3 to 5)", 8],
#   ["Waterproof mattress pad", 8],
#   ["Baby bathtub", 9],
#   ["Hooded bath towels (2)", 9],
#   ["Washcloths (5 to 7)", 9],
#   ["Baby shampoo or body wash", 9],
#   ["Changing table or pad", 10],
#   ["Crib and mattress", 10],
#   ["Bassinet or cradle", 10],
#   ["Glider or rocker", 10],
#   ["Mobile", 10],
#   ["First-aid kit", 11],
#   ["Bulb syringe", 11],
#   ["Teething toys", 11],
#   ["Digital thermometer", 11],
#   ["Baby nail scissors or clippers", 11],
#   ["Baby-friendly laundry detergent", 11],
#   ["A soft-bristled baby brush", 11],
# ]

# group_list.each do | title, group_id |
#   GroupItem.create!( title: title, group_id: group_id)
# end