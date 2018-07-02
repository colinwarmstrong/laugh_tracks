RSpec.describe 'Comedians Index' do
  describe 'As a visitor' do
    context "When I visit '/comedians'" do
      it 'I see a list of comedians with their name and age' do
        comedian_1 = Comedian.create(name: 'Dave Chapelle', age: 42)
        comedian_2 = Comedian.create(name: "T.J. Miller", age: 36)

        visit '/comedians'

        expect(page).to have_content("#{comedian_1.name}")
        expect(page).to have_content("Age: #{comedian_1.age}")
        expect(page).to have_content("#{comedian_2.name}")
        expect(page).to have_content("Age: #{comedian_2.age}")
      end

      it "I see a list of each comedian's specials" do
        comedian_1 = Comedian.create(name: "Iliza Shlesinger", age: 34)
        special_1_1 = Special.create(name: "War Paint", comedian_id: comedian_1.id)
        special_1_2 = Special.create(name: "Freezing Hot", comedian_id: comedian_1.id)

        comedian_2 = Comedian.create(name: "Hannibal Buress", age: 34)
        special_2_1 = Special.create(name: "My Name is Hannibal", comedian_id: comedian_2.id)
        special_2_2 = Special.create(name: "Animal Furnace", comedian_id: comedian_2.id)

        visit '/comedians'

        expect(page).to have_content("#{special_1_1.name}")
        expect(page).to have_content("#{special_1_2.name}")
        expect(page).to have_content("#{special_2_1.name}")
        expect(page).to have_content("#{special_2_2.name}")
      end

      it "I see the average age of all comedians" do
        Comedian.create(name: "Hannibal Buress", age: 34)
        Comedian.create(name: "Paul Mooney", age: 76)
        Comedian.create(name: "John Mulaney", age: 40)

        expected = Comedian.average_age

        visit '/comedians'

        expect(page).to have_content("Average Age: #{expected}")
      end

      it "I see the count of specials for each comedian" do
        comedian = Comedian.create(name: "Tom Segura", age: 38)
        Special.create(name: "Completely Normal", comedian_id: comedian.id)
        Special.create(name: "Mostly Stories", comedian_id: comedian.id)
        Special.create(name: "Something Something", comedian_id: comedian.id)

        expected = comedian.number_of_specials

        visit '/comedians'

        expect(page).to have_content("Number of Specials: #{expected}")
      end
    end

    describe "When I visit '/comedians?age=#'" do
      it 'I see a list of all comedians with a specific age' do
        comedian_1 = Comedian.create(name: "Hannibal Buress", age: 34)
        comedian_2 = Comedian.create(name: "Paul Mooney", age: 34)
        comedian_3 = Comedian.create(name: "John Mulaney", age: 72)

        visit '/comedians?age=34'

        expect(page).to have_content("#{comedian_1.name}")
        expect(page).to have_content("Age: #{comedian_1.age}")
        expect(page).to have_content("#{comedian_2.name}")
        expect(page).to have_content("Age: #{comedian_2.age}")
        expect(page).to_not have_content("#{comedian_3.name}")
        expect(page).to_not have_content("Age: #{comedian_3.age}")
      end
    end
  end
end
