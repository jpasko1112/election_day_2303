require 'spec_helper'

RSpec.describe Candidate  do
  before(:each) do
    @diana = Candidate.new({name: "Diana D", party: :democrat})
  end

  describe '#exists' do
    it 'can initialize' do
      expect(@diana).to be_a(Candidate)
    end

    it 'can have details' do
      expect(@diana.name).to eq('Diana D')
      expect(@diana.party).to eq(:democrat)
    end
  end

  describe '#vote_for!' do
    it 'can count votes' do
      expect(@diana.votes).to eq(0)
      @diana.vote_for!
      @diana.vote_for!
      @diana.vote_for!
      expect(@diana.votes).to eq(3)
      @diana.vote_for!
      expect(@diana.votes).to eq(4)
    end
  end
end