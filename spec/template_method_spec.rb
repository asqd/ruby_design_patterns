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

    it "requires subclasses to implement greeting_line" do
      expect { hero.greet }.to raise_exception
    end
  end

  context "Warrior" do
    let(:hero) { Warrior.new }

    it "has damage of 15" do
      expect(hero.damage).to eq(15)
    end

    it "has strike ability" do
      expect(hero.abilities).to include(:strike)
    end

    it "greets other characters" do
      expect(hero.greet).to eq("Warrior is ready to fight")
    end
  end

  context "Mage" do
    let(:hero) { Mage.new }

    it "has damage of 7" do
      expect(hero.damage).to eq(7)
    end

    it "has strike ability" do
      expect(hero.abilities).to include(:fireball)
    end

    it "greets other characters" do
      expect(hero.greet).to eq("Wisdom is power")
    end
  end

end