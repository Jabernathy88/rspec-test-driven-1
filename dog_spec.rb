require 'rspec'
require_relative 'dog'

RSpec.describe Dog do
  describe '#bark' do
    it 'returns string "Bowow!"' do
      expect(subject.bark).to eql("Bowow!")
    end
  end

  describe '#feed' do
    subject { described_class.new(hunger_level: 5) }

    it 'is no longer hungry' do
      subject.feed
      expect(subject).to_not be_hungry
    end
  end

  describe '#hungry?' do
    it 'returns true if hunger_level > 5' do
      dog = Dog.new(hunger_level: 6)
      expect(dog).to be_hungry # implies boolean output
    end
    # slightly different syntax
    context 'when hunger level is 5 or less' do 
      it 'returns false' do
        subject { described_class.new(hunger_level: 5) }
        expect(subject.hungry?).to eql(false)
      end
    end
  end
end