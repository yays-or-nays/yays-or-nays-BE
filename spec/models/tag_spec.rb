require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe 'Relationship' do
    it { should have_many :hot_takes }
  end
  describe 'Validation' do
    it { validate_presence_of :category }
  end
end
