require 'rails_helper'

RSpec.describe Search, type: :model do
  context 'Associations' do
    it 'belongs_to user' do
      association = described_class.reflect_on_association(:user).macro
      expect(association).to eq :belongs_to
    end

    it 'has_many items' do
      association = described_class.reflect_on_association(:items)
      expect(association.macro).to eq :has_many
    end
  end
end
