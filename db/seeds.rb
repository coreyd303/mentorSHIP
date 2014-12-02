class Seed

  Mentor.create(name: "Mr. Mentor",
                email: "coreyd303@gmail.com",
                contact_preference: "sms",
                phone_number: "303-249-6458")

  Student.create(name: "Bob Student",
                 cohort: "1406",
                 mod_id: 1,
                 posse_id: 1)

  10.times do |i|
    Mentor.create!(name:    Faker::Name.name,
                   email:   Faker::Internet.email,
                   company: Faker::Company.name,
                   bio:     Faker::Lorem.paragraph(3))
  end

  skill1 = Skill.create(name: "Ruby")
  skill2 = Skill.create(name: "Sinatra")
  skill3 = Skill.create(name: "Rails")
  skill4 = Skill.create(name: "HTML/CSS")
  skill5 = Skill.create(name: "Bootstrap")
  skill6 = Skill.create(name: "Javascript")
  skill7 = Skill.create(name: "EmberJS")
  skill8 = Skill.create(name: "VPS")

  mentor1   = Mentor.all[0]
  mentor2   = Mentor.all[1]
  mentor3   = Mentor.all[2]
  mentor4   = Mentor.all[3]
  mentor5   = Mentor.all[4]
  mentor6   = Mentor.all[5]
  mentor7   = Mentor.all[6]
  mentor8   = Mentor.all[7]
  mentor9   = Mentor.all[8]
  mentor10  = Mentor.all[9]

  mentor1.skills  << skill1
  mentor1.skills  << skill3
  mentor2.skills  << skill2
  mentor2.skills  << skill4
  mentor3.skills  << skill6
  mentor3.skills  << skill7
  mentor4.skills  << skill5
  mentor4.skills  << skill8
  mentor5.skills  << skill3
  mentor5.skills  << skill5
  mentor6.skills  << skill6
  mentor6.skills  << skill1
  mentor7.skills  << skill2
  mentor7.skills  << skill8
  mentor8.skills  << skill5
  mentor8.skills  << skill7
  mentor9.skills  << skill6
  mentor9.skills  << skill8
  mentor10.skills << skill4
  mentor10.skills << skill3

  Posse.create(name: "Backus")
  Posse.create(name: "Berners Lee")
  Posse.create(name: "Borg")
  Posse.create(name: "Brooks")
  Posse.create(name: "Goldberg")
  Posse.create(name: "Holberton")
  Posse.create(name: "Hopper")
  Posse.create(name: "Ingalls")
  Posse.create(name: "Kay")
  Posse.create(name: "Knuth")
  Posse.create(name: "Lovelace")
  Posse.create(name: "Matsumoto")
  Posse.create(name: "Mccarthy")
  Posse.create(name: "Mcnulty")
  Posse.create(name: "Ritchie")
  Posse.create(name: "Sparck Jones")
  Posse.create(name: "Van Rossum")
  Posse.create(name: "Von Neumann")

  Mod.create(number: 1, name: "Module One",   description: "TDD with Ruby")
  Mod.create(number: 2, name: "Module Two",   description: "Ruby Web Applications with Sinatra & Rails")
  Mod.create(number: 3, name: "Module Three", description: "Professional Web Applications")
  Mod.create(number: 4, name: "Module Four",  description: "High-Performance Applications with APIs and Services")
  Mod.create(number: 5, name: "Graduated",    description: "Alumni")
end

Seed.new
