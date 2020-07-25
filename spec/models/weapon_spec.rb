require 'rails_helper'
require 'ffaker'

RSpec.describe Weapon, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'is invalid if the level is not between 1 and 99' do
    weapon = build(:weapon, level: Random.rand(100..9999))
    expect(weapon).to_not be_valid
  end

  # it 'is invalid if the power_step is not equal 100' do
  #   weapon1 = build(:weapon, power_step: Random.rand(0..99))
  #   weapon2 = build(:weapon, power_step: Random.rand(101..9999))
  #   expect(weapon1).to_not be_valid
  #   expect(weapon2).to_not be_valid
  # end

  it 'is invalid if the power_base is not greather than or equal to 3000' do
    weapon = build(:weapon, power_base: Random.rand(0..2999))
    expect(weapon).to_not be_valid
  end

  # it "returns the weapon current power" do
  #   weapon = create(:weapon)
  #   power_weapon = (weapon.power_base + ((weapon.level - 1) * weapon.power_step))
  #   expect(weapon.current_power).to eq(power_weapon)
  # end

  # it "returns the correct weapon title" do
  #   weapon = create(:weapon)
  #   expect(weapon.title).to eq("#{weapon.name} ##{weapon.level}")
  # end
end
