require 'rails_helper'

RSpec.describe HotTake, type: :model do
  describe 'Relationship' do
    it { should belong_to :tag }
  end
end
