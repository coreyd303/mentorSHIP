class Seed

  Student.create(name: "Bob Student",
                 cohort: "1406",
                 mod_id: 1)

  Mentor.create(name: "Mr. Mentor",
                email: "mentor@example.com")

  Skill.create(name: "Ruby")
  Skill.create(name: "Sinatra")
  Skill.create(name: "Rails")
  Skill.create(name: "HTML/CSS")
  Skill.create(name: "Bootstrap")
  Skill.create(name: "Javascript")
  Skill.create(name: "EmberJS")
  Skill.create(name: "VPS")

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
