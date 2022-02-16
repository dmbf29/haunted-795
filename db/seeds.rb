puts 'Cleaning the DB....'
HauntedHouse.destroy_all

puts 'Creating haunted houses...'

puts "... created #{HauntedHouse.count} haunted houses."
