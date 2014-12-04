class Seed
attr_reader :build_jeff,
            :build_skills,
            :build_prefs,
            :skill_jeff,
            :pref_jeff,
            :build_posses,
            :build_mods,
            :build_projects 

  def initialize
    build_jeff
    build_skills
    build_prefs
    skill_jeff
    pref_jeff
    build_posses
    build_mods
    build_projects
  end

  def build_jeff
    @jeff = Mentor.create(name: "Jeff Casimir",
                          email: "jeff@turing.io",
                          phone_number: "202-460-0772",
                          company: "Turing School of Software & Design",
                          bio: "Stretching back to 2005, Jeff has more experience teaching Ruby and Rails than anyone in the world. Starting his education career with Teach for America in 2003, he’s taught middle school and high school, co-founded a middle school, and created Jumpstart Lab in 2009, Hungry Academy in 2012, and gSchool in 2013. Along the way he’s taught thousands of developers, taken nearly a hundred people from “no experience” to professional, and created over a thousand pages of instructional content.",
                          )
    puts "Jeff built"
  end

  def build_skills
    @skill1  = Skill.create(name: "Ruby")
    @skill2  = Skill.create(name: "Sinatra")
    @skill3  = Skill.create(name: "Rails")
    @skill4  = Skill.create(name: "HTML/CSS")
    @skill5  = Skill.create(name: "Bootstrap")
    @skill6  = Skill.create(name: "Javascript")
    @skill7  = Skill.create(name: "EmberJS")
    @skill8  = Skill.create(name: "VPS")
    @skill9  = Skill.create(name: "Caching")
    @skill10 = Skill.create(name: "Perfomance")
    @skill11 = Skill.create(name: "RSPEC")
    @skill12 = Skill.create(name: "Heroku")
    puts "skills built"
  end

  def build_prefs
    @p1 = Preference.create(name: "sms")
    @p2 = Preference.create(name: "email")
    puts "prefs built"
  end

  def skill_jeff
    @jeff.skills  << @skill1
    @jeff.skills  << @skill2
    @jeff.skills  << @skill3
    @jeff.skills  << @skill4
    @jeff.skills  << @skill5
    @jeff.skills  << @skill6
    @jeff.skills  << @skill7
    @jeff.skills  << @skill8
    @jeff.skills  << @skill9
    @jeff.skills  << @skill10
    @jeff.skills  << @skill11
    @jeff.skills  << @skill12
    puts "Jeff is skilled"
  end

  def pref_jeff
    @jeff.preferences << @p1
    @jeff.preferences << @p2
    puts "jeff is preffed"
  end

  def build_posses
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
    puts "Posses built"
  end

  def build_mods
    Mod.create(number: 1, name: "Module One",   description: "TDD with Ruby")
    Mod.create(number: 2, name: "Module Two",   description: "Ruby Web Applications with Sinatra & Rails")
    Mod.create(number: 3, name: "Module Three", description: "Professional Web Applications")
    Mod.create(number: 4, name: "Module Four",  description: "High-Performance Applications with APIs and Services")
    Mod.create(number: 5, name: "Graduated",    description: "Alumni")
    puts "Mods made"
  end

  def build_projects
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
    puts "Projects built"
  end
end

Seed.new
