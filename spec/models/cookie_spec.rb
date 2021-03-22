require 'rails_helper'

RSpec.describe Cookie, type: :model do
  context "#name" do
    it "prints the name of cookie" do
      cookie = build(:cookie)
      expect(cookie.name).to eq("madeleine")
    end
  end

  context "validations" do
    it "ensures the presence of name" do
      cookie = Cookie.new(name: "").save
      expect(cookie).to eq(false)
    end

    it "ensures that name has two or more characters" do
      cookie = Cookie.new(name: "j").save
      expect(cookie).to eq(false)
    end

    it "ensures that valid name will be saved" do
      cookie = Cookie.new(name: "macaroon")
    end
  end
end
