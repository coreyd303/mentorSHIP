require 'rails_helper'

RSpec.describe Mentor, :type => :model do
  let(:mentor) { Mentor.create(name: "Harry Potter",
                               email: "harry@example.com")}

  it 'is valid' do
    expect(mentor).to be_valid
  end

  it 'is invalid without name' do
    mentor.name = nil

    expect(mentor).not_to be_valid
  end

  it 'is invalid without email' do
    mentor.email = nil

    expect(mentor).not_to be_valid
  end

  it 'is valid without a bio' do
    mentor.bio = nil

    expect(mentor).to be_valid
  end

  it 'is valid without a company' do
    mentor.company = nil

    expect(mentor).to be_valid
  end

  it 'is valid without skills on create' do
    expect(mentor).to be_valid
  end
end
