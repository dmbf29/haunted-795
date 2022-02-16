puts 'Cleaning the DB....'
HauntedHouse.destroy_all

puts 'Creating haunted houses...'

HauntedHouse.create!(
  name: 'House of Usher',
  banner_url: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/6018ec44358589.58109b4c320d6.jpg'
)

puts "... created #{HauntedHouse.count} haunted houses."
