puts 'Cleaning the DB....'
HauntedHouse.destroy_all

puts 'Creating haunted houses...'

usher = HauntedHouse.create!(
  name: 'House of Usher',
  banner_url: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/6018ec44358589.58109b4c320d6.jpg'
)

Monster.create!(
  name: 'Medusa',
  image_url: 'https://bestwonderstore.com/wp-content/uploads/2021/09/Medusa-Modern.jpg',
  haunted_house: usher
)

Monster.create!(
  name: 'Usher',
  image_url: 'https://media.globalcitizen.org/thumbnails/d9/29/d929573c-09c5-4fa6-912f-b20ee28379e9/usher_feb2018_0971b_flat.jpg__1600x900_q85_crop_subsampling-2.jpg',
  haunted_house: usher
)

Monster.create!(
  name: 'Yann',
  image_url: 'https://res.cloudinary.com/dmbf29/image/upload/v1589532186/qbsrVcFqDSPFNYXihrV2tfuC.jpg',
  haunted_house: usher
)

Monster.create!(
  name: 'Trouni',
  image_url: 'https://res.cloudinary.com/dmbf29/image/upload/v1582182957/tfuHKHCTScFNYUy1bi4AyRQq.jpg',
  haunted_house: usher
)

puts "... created #{HauntedHouse.count} haunted houses."

puts "Removing powers...."
Power.destroy_all

puts "Creating powers..."
15.times do
  Power.create!(
    name: Faker::Superhero.unique.power
  )
end
puts "... created #{Power.count} powers."
