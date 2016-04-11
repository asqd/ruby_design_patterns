require 'spec_helper'
require_relative "../lib/template_method"

describe 'Template Method Pattern' do
  let(:hero) { Hero.new }

  it "has damage rating 10" do
    expect(hero.damage).to eq(10)
  end

  it "can attack" do
    expect(hero.attack).to eq("Attack dealing 10 damage")
  end
end