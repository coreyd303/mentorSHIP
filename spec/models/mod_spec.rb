require 'rails_helper'

RSpec.describe Mod, :type => :model do

  it "is not valid without a name" do
    mod = Mod.create(name:nil)
    expect(mod).not_to be_valid
  end

  it "is not valid without a name as a number" do
    mod = Mod.create(name:"datageeks")
    expect(mod).not_to be_valid
  end

  it "is only valid with a 4 digit number" do
    mod = Mod.create(name: 123)
    expect(mod).not_to be_valid

    mod = Mod.create(name: 1406)
    expect(mod).to be_valid
  end

  it "is two digit year and two digit month" do
    mod = Mod.create(name:1515)
    expect(mod).not_to be_valid

    mod = Mod.create(name:1503)
    expect(mod).to be_valid
  end

end
