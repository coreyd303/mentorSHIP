require "rails_helper"

RSpec.describe Student, :type => :model do
  let(:posse)   { Posse.create(name: "Berners Lee") }

  let(:mod)     { Mod.create(number: 1,
                             name: "Module One",
                             description: "TDD with Ruby") }

  let(:student) { Student.create(name:      "Harry Potter",
                                bio:       "Wizard. Voldemort wishes he had my style.",
                                email: 'harry@ex.com',
                                 cohort:    "1406",
                                 mod_id:    mod.id,
                                 posse_id:  posse.id) }

  it "is valid" do
    expect(student).to be_valid
  end

  it "is valid without a bio" do
    student.bio = nil

    expect(student).to be_valid
  end

  it "knows its posse name" do
    expect(student.posse.name).to eq("Berners Lee")
  end

  it "knows its module's number" do
    expect(student.mod.number).to eq(1)
  end

  it "knows its module's name" do
    expect(student.mod.name).to eq("Module One")
  end

  it "knows its module's description" do
    expect(student.mod.description).to eq("TDD with Ruby")
  end
end
