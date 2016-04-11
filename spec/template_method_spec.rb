require 'spec_helper'
require_relative "../lib/template_method"

describe 'Template Method Pattern' do
  context "Default Hero" do
    let(:hero) { Hero.new }

    it "has damage of 10" do
      expect(hero.damage).to eq(10)
    end

    it "can attack" do
      expect(hero.attack).to eq("Attack dealing 10 damage")
    end
  end

  context "Warrior" do
    let(:hero) { Hero.new :warrior }

    it "has damage of 15" do
      expect(hero.damage).to eq(15)
    end

    it "has strike ability" do
      expect(hero.abilities).to include(:strike)
    end
  end

  context "Mage" do
    let(:hero) { Hero.new :mage }

    it "has damage of 7" do
      expect(hero.damage).to eq(7)
    end

    it "has strike ability" do
      expect(hero.abilities).to include(:fireball)
    end
  end

end