require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation of the User model" do

    it "is valid with valid attributes" do
      user = User.create(name: "John Doe", bio: "I am a user", photo: "https://picsum.photos/seed/picsum/536/354")
      expect(user).to be_valid
      expect(user.errors).to be_empty
      expect(user.name).to eq("John Doe")
      expect(user.bio).to eq("I am a user")
    end

    it "is not valid without a name" do
      user = User.create(name: nil, bio: "I am a user", photo: "https://picsum.photos/seed/picsum/536/354")
      expect(user).not_to be_valid
    end

    it "is not valid without a bio" do
      user = User.create(name: "John Doe", bio: nil, photo: "https://picsum.photos/seed/picsum/536/354")
      expect(user).not_to be_valid
    end

    it "is not valid with a bio longer than 500 characters" do
      user = User.create(name: "Jhon Doe", bio: "1234567890"*51, photo: "https://picsum.photos/seed/picsum/536/354")
      expect(user).not_to be_valid
    end
end
end
