class Decision < ApplicationRecord

    has_many :advantages
    has_many :disadvantages
    has_many :notes
end
