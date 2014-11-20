require 'rails_helper'

RSpec.describe Student, :type => :model do
  let(:student) { Student.create(name: "Harry Potter",
                                 bio: "Wizard. Voldemort wishes he had my style.",
                                 cohort: "1406",
                                 module_id: 1)}

  it 'is valid' do
    expect(student).to be_valid
  end

  it 'is invalid without name' do
    student.name = nil

    expect(student).not_to be_valid
  end

  it 'is invalid without cohort' do
    student.cohort = nil

    expect(student).not_to be_valid
  end

  it "cohort is two digit year and two digit month" do
    student.cohort = "2013"
    expect(student).not_to be_valid

    student.cohort = "1503"
    expect(student).to be_valid
  end

  it 'is invalid without module_id' do
    student.module_id = nil

    expect(student).not_to be_valid
  end

  it 'is valid without a bio' do
    student.bio = nil

    expect(student).to be_valid
  end


end
