class Genre < ActiveRecord::Base
    has_many :poems
    has_many :authors, through: :poems
end