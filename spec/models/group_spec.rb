require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'associations' do
    it { should have_many(:expenses) }
    it { should have_one_attached(:icon) }
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
