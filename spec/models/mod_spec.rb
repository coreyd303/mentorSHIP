require 'rails_helper'

RSpec.describe Mod, :type => :model do

  let(:mod) { Mod.create(name: 1)}

  it "is not valid without a name" do
    mod.name = nil
    expect(mod).not_to be_valid
  end

  it "is not valid without a name as a number" do
    mod.name = "cheekymonk"
    expect(mod).not_to be_valid
  end


end
