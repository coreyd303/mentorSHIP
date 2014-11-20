module MentorBuilder
attr_accessor :mentors, :mentor, :attributes

  def build_mentors
    10.times do
      Mentor.create(name: Faker::Name.name,
                    email: Faker::Internet.email)
    end
    @mentors = Mentor.all
  end

  def build_mentor
    @mentor = Mentor.create(name: "Mr Mentor",
                            email: "mentor@example.com")
  end

  def mentor_attributes
    @attributes = { name:    "Old Greg",
                    company: "Bailey's",
                    email:   "ruby@example.com",
                    bio:     "Do you love me? Could you learn to love me?" }
  end

  def new_mentor_attributes
    @new_attributes = { name:  "Big Bob",
                        email: "bob@example.com" }
  end

  def invalid_mentor_attributes
    @invalid_attributes = { name:  "Larry",
                            email: nil }
  end
end

module SkillBuilder
end