class Comedian < ActiveRecord::Base
  has_many :specials
  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    Comedian.average(:age).to_f.round(2)
  end

  def number_of_specials
    specials.count
  end
end
