require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "Associations" do
    it { should have_many(:songs) }
  end

  describe "Validations" do
    subject { Artist.new(name: "Eifel 65") }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
