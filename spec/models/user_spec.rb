require 'rails_helper'
require 'ffaker'

RSpec.describe User, type: :model do
  # it "is invalid if the level is not between 1 and 99"
  # it "is invalid if the level is not between 1 and 99" do
  #   expect(User.create(nickname: 'Chronos', kind: :wizard, level: 100)).to_not be_valid
  # end
  
  # it "is invalid if the level is not between 1 and 99" do
  #   nickname = FFaker::Name.first_name
  #   kind = %i[knight wizard].sample
  #   level = FFaker::Random.rand(100..9999)
  #   user = User.new(nickname: nickname, kind: kind, level: level)
    
  #   expect(user).to_not be_valid
  # end

  it "is invalid if the level is not between 1 and 99" do
    user = build(:user, level: FFaker::Random.rand(100..9999))
    expect(user).to_not be_valid
  end

  # it "return the correct hero title"  
  # it "return the correct hero title"  do
  #   user = User.create(nickname: 'Chronos', kind: :wizard, level: 1)
  #   expect(user.title).to eq('wizard Chronos #1')
  # end

  it "return the correct hero title"  do
    nickname = FFaker::Name.first_name
    kind = %i[knight wizard].sample
    level = FFaker::Random.rand(1..99)

    # user = User.create(nickname: nickname, kind: kind, level: level)
    user = create(:user, nickname: nickname, kind: kind, level: level)
    expect(user.title).to eq("#{kind} #{nickname} ##{level}")
  end

end
