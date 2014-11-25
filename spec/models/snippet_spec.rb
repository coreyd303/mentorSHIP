require 'rails_helper'

RSpec.describe Snippet, :type => :model do
  let(:student) { Student.new(name: 'Harry Potter,',
                              bio: 'owns Voldemort',
                              cohort: '1406',
                              mod_id: '1',
                              posse_id: '2') }

  let(:snippet) { Snippet.new(student_id: student.id,
                              title: 'sample title',
                              body: 'sample body') }

  it 'is valid' do
    expect(snippet).to be_valid
  end

  it 'is invalid wihtout a title' do
    snippet.title = nil

    expect(snippet).not_to be_valid
  end

  it 'is invalid without a body' do
    snippet.body = nil

    expect(snippet).not_to be_valid
  end
end
