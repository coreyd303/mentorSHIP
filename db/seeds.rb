class Seed

  def initialize
    generate_skills
    generate_mentors
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
    
    skills = Skill.all
    puts "#{skills.count} created"
  end

  def generate_mentors
    10.times do |i|
      Mentor.create!(name: Faker::Name.name,
                     email: Faker::Internet.email,
                     company: Faker::Company.name,
                     bio: Faker::Lorem.paragraph(3),  
                     photo: "http://robohash.org/#{i}.png?set=set1&size=200x200")
    end
    
    mentors = Mentor.all
    puts "#{mentors.count} mentors created"
  end
end

Seed.new