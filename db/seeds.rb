class Seed

  Mentor.create(name: "Mr. Mentor",
                email: "coreyd303@gmail.com")

  Skill.create(name: "Ruby")
  Skill.create(name: "Sinatra")
  Skill.create(name: "Rails")
  Skill.create(name: "HTML/CSS")
  Skill.create(name: "Bootstrap")
  Skill.create(name: "Javascript")
  Skill.create(name: "EmberJS")
  Skill.create(name: "VPS")

  Student.create(name:     "Bob Student",
                 cohort:   "1406",
                 mod_id:   1,
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

  Project.create(name: "Mastermind",
                 url:"http://tutorials.jumpstartlab.com/projects/mastermind.html",
                 description: "In this project you’ll use Ruby to build an implementation of the classic game Mastermind.",
                 mod_id: 1)
  Project.create(name: "EventReporter",
                 url:"http://tutorials.jumpstartlab.com/projects/event_reporter.html",
                 description: "This project builds on the lessons learned in EventManager and MicroBlogger to focus on fundamental Ruby style/concepts.",
                 mod_id: 1)
  Project.create(name: "SalesEngine",
                 url:"http://tutorials.jumpstartlab.com/projects/sales_engine.html",
                 description: "In this project you’ll practice building a system of several interacting Ruby objects using TDD.",
                 mod_id: 1)
  Project.create(name: "Ideabox Web",
                 url: "http://tutorials.jumpstartlab.com/projects/idea_box.html#extensions",
                 description: "Let’s build a system to record your good, bad, and awful ideas.",
                 mod_id: 2)
  Project.create(name: "Clone Wars",
                 url: "http://tutorials.jumpstartlab.com/projects/clone_wars.html",
                 description: "In this project you’ll take a client’s website and rebuild it as a Sinatra and SQL-database powered web application.",
                 mod_id: 2)
  Project.create(name: "ContactManager",
                 url: "http://tutorials.jumpstartlab.com/projects/contact_manager.html",
                 description: "We’ll use an iterative approach to develop one feature at a time. Here goes!",
                 mod_id: 2)
  Project.create(name: "DinnerDash",
                 url: "http://tutorials.jumpstartlab.com/projects/dinner_dash.html",
                 description: "In this project you’ll use Ruby on Rails to build an online commerce platform for a restaurant to facilitate online ordering.",
                 mod_id: 2)
  Project.create(name: "The Pivot",
                 url: "http://tutorials.jumpstartlab.com/projects/the_pivot.html",
                 description: "In this project you’ll build upon an existing implementation of Dinner Dash, turning it from a restaurant ordering site to something much bigger.",
                 mod_id: 3)
  Project.create(name: "Self-Directed Project",
                 url: "https://github.com/turingschool/lesson_plans/blob/master/ruby_03-professional_rails_applications/self_directed_project.markdown",
                 description: "Build something interesting that demonstrates your skills, delivers value to the user, and makes use of open data.",
                 mod_id: 3)
  Project.create(name: "FeedEngine",
                 url: "http://tutorials.jumpstartlab.com/projects/feed_engine/feed_engine.html",
                 description: "The goal of this project is to practice consuming web service APIs as well as publishing an API of your own.",
                 mod_id: 4)
  Project.create(name: "Mastery Project",
                 url: "https://github.com/turingschool/mastery_project",
                 description: "Build something amazing for Turing.",
                 mod_id: 4)
end

Seed.new
