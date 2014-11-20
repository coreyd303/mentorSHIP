require 'rails_helper'

RSpec.describe Mod, :type => :model do
  let(:mod)       { Mod.create(number:       1,
                               name:         "Module One",
                               description:  "TDD with Ruby") }

  let(:student1)  { Student.create(name:      "Harry Potter",
                                   bio:       "Wizard.",
                                   cohort:    "1407",
                                   mod_id:    mod.id,
                                   posse_id:  1) }

  let(:student2)  { Student.create(name:     "Hermione Granger",
                                   bio:      "Brightest witch of her age.",
                                   cohort:   "1407",
                                   mod_id:   mod.id,
                                   posse_id: 1) }

  it "is valid" do
    expect(mod).to be_valid
  end

  it "is invalid without a number" do
    mod.number = nil

    expect(mod).not_to be_valid
  end

  it "is invalid without a name" do
    mod.name = nil

    expect(mod).not_to be_valid
  end

  it "is invalid without a description" do
    mod.description = nil

    expect(mod).not_to be_valid
  end

  it "knows about its students" do
    mod.students = [student1, student2]
    mod_students = mod.students

    expect(mod_students.count).to      eq(2)
    expect(mod_students.first.name).to eq("Harry Potter")
  end
end
