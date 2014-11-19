class Seed

  def initialize
    generate_skills
    generate_mentors
    add_skills_to_mentors
  end

  def generate_skills
    Skill.create(name: "Ruby")
    Skill.create(name: "Sinatra")
    Skill.create(name: "Rails")
    Skill.create(name: "HTML/CSS")
    Skill.create(name: "Bootstrap")
    Skill.create(name: "Javascript")
    Skill.create(name: "EmberJS")
    Skill.create(name: "VPS")

    puts "8 skills created"
  end

  def generate_mentors
    10.times do |i|
      mentor = Mentor.create!(name: Faker::Name.name,
                              email: Faker::Internet.email,
                              company: Faker::Company.name,
                              bio: Faker::Lorem.paragraph(3),
                              photo: "http://robohash.org/#{i}.png?set=set1&size=200x200")
    end
    puts "10 mentors created"
  end
end

Seed.new