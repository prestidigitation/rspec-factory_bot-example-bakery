require 'rails_helper'

RSpec.describe Cookie, type: :model do
  context "#name" do
    it "prints the name of cookie" do
      cookie = create(:cookie)
      expect(cookie.name).to eq("madeleine")
    end
  end

  context "validations" do
    it "ensures the presence of name" do
      # Builds a testable Cookie object without using factory_bot:
      # cookie = Cookie.new(name: "").save
      cookie = build(:cookie, name: "")
      expect(cookie.save).to eq(false)
    end

    it "ensures that name has two or more characters" do
      # Builds a testable Cookie object without using factory_bot:
      # cookie = Cookie.new(name: "j").save
      cookie = build(:cookie, name: "j")
      expect(cookie.save).to eq(false)
    end

    it "ensures that valid name will be saved" do
      # Builds a testable Cookie object without using factory_bot:
      # cookie = Cookie.new(name: "macaroon")
      cookie = build(:cookie, name: "macaroon")
      expect(cookie.save).to eq(true)
    end
  end
end
