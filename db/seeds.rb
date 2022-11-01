puts 'Creating teachers...'

Teacher.create!({
  name: "Sy Rashid",
  campus: "Lisbon"
})
Teacher.create!({
  name: "George",
  campus: "Melbourne"
})
Teacher.create!({
  name: "Cassie",
  campus: "Berlin"
})

puts "Finished seeding #{Teacher.count} teachers!"
