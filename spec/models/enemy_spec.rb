require 'rails_helper'
require 'ffaker'

RSpec.describe Enemy, type: :model do
  let(:enemy) { create(:enemy) }

  it 'returns the correct current power' do
    expect(enemy.current_power).to eq(enemy.power_base + ((enemy.level - 1) * enemy.power_step))
  end
end
