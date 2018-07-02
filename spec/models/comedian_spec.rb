RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end

    describe 'Class Methods' do
      it 'self.average_age' do
        Comedian.create(name: "Hannibal Buress", age: 34)
        Comedian.create(name: "Paul Mooney", age: 76)
        Comedian.create(name: "John Mulaney", age: 40)

        expected = Comedian.average_age

        expect(expected).to eq(50)
      end
    end

    describe 'Instance Methods' do
      it 'number_of_specials' do
        comedian = Comedian.create(name: "Tom Segura", age: 38)
        Special.create(name: "Completely Normal", comedian_id: comedian.id)
        Special.create(name: "Mostly Stories", comedian_id: comedian.id)
        Special.create(name: "Something Something", comedian_id: comedian.id)

        expected = comedian.number_of_specials

        expect(expected).to eq(3)
      end
    end
  end
end
