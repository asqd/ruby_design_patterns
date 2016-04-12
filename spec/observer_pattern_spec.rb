require 'spec_helper'
require_relative '../lib/observer_pattern'

describe 'Observer Pattern' do

  describe Hero do
    it "is cursed when discovers cursed Tile" do
      hero = Hero.new
      tile = Tile.new cursed: true
      hero.discover(tile)

      expect(hero.cursed?).to be true
    end

    it "is not cursed when discovers Tile without curse" do
      hero = Hero.new
      tile = Tile.new
      hero.discover(tile)

      expect(hero.cursed?).to be false
    end
  end

  describe Tile do
    it "is not cursed by default" do
      tile = Tile.new
      expect(tile.cursed?).to be false
    end

    it "can be created as cursed" do
      tile = Tile.new cursed: true
      expect(tile.cursed?).to be true
    end
  end
end