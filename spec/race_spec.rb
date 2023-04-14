require 'spec_helper'

RSpec.describe Race do
  before(:each) do
    @race = Race.new("Texas Governor")
    @candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})
  end

  describe '#exists' do
    it 'can initialize' do
      expect(@race).to be_a(Race)
    end

    it 'can have attributes' do
      expect(@race.office).to eq("Texas Governor")
      expect(@race.candidates).to eq([])
    end
  end

  describe '#candidate' do
    it 'can exist' do
      expect(@candidate1.class).to be_a(Candidate)
    end
  end
end