require 'rails_helper'

RSpec.describe Student, :type => :model do
  let(:student) { Student.create(name: "Harry Potter",
                                 bio: "Wizard. Voldemort wishes he had my style.",
                                 cohort: "1406",
                                 module_id: 1)}

  it 'is valid' do
    expect(student).to be_valid
  end
end
