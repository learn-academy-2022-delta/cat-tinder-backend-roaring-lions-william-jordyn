class BigCat < ApplicationRecord
    validates :name, :age, :enjoys, :funfact, :image, presence: true
    validates :enjoys, length: { minimum: 10 }
end
