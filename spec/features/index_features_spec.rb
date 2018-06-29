RSpec.describe '/comedians' do
  describe 'As a visitor' do
    context "When I visit '/comedians'" do
      it 'Then I see a list of comedians with their name and age' do
        Comedian.create(name: 'Dave Chapelle', age: '42')

        visit '/comedians'

        expect(page).to have_content('Dave Chapelle')
        expect(page).to have_content('Age: 42')
      end

      it "Then I see a list of comedian's specials" do
        iliza = Comedian.create(name: "Iliza Shlesinger", age: 34)
        Special.create(name: "War Paint", comedian_id: iliza.id)
        Special.create(name: "Freezing Hot", comedian_id: iliza.id)

        visit '/comedians'

        expect(page).to have_content("War Paint")
        expect(page).to have_content("Freezing Hot")
      end

      it "Then I see the average age for all comedians" do
        hannibal = Comedian.create(name: "Hannibal Buress", age: 34)
        paul = Comedian.create(name: "Paul Mooney", age: 76)

        visit '/comedians'

        expect(page).to have_content('Average Age: 55')
      end
    end

    it "Then I see the count of specials for each comedian" do
      tom = Comedian.create(name: "Tom Segura", age: 38)
      Special.create(name: "Completely Normal", comedian_id: tom.id)
      Special.create(name: "Mostly Stories", comedian_id: tom.id)

      visit '/comedians'

      expect(page).to have_content('Number of Specials: 2')
    end
  end
end
