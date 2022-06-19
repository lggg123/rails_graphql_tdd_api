require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "Associations" do
    it { should belong_to(:artist) }
  end

  describe "Validations" do
    subject { Song.new(title: "Blue man", artist_id: 1 ) }
    it { should validate_uniqueness_of(:title) }
    it { should validate_presence_of(:title) }
  end
end
