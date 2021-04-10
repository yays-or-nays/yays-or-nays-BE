require 'rails_helper'

RSpec.describe HotTake, type: :model do
  describe 'Relationship' do
    it { should belong_to :tag }
  end
  describe 'Validations' do
    it { validate_presence_of :question }
    it { validate_presence_of :picture }
    it { validate_presence_of :tag_id }
  end
end
