require 'rails_helper'

RSpec.describe Ninja, type: :model do
  it "name should not be empty" do
  	ninja = Ninja.new(name:'')
  	expect(ninja).to be_invalid
  end
  it "description should not be empty" do
  	ninja = Ninja.new(name:'xxx',description:'')
  	expect(ninja).to be_invalid
  end
end
