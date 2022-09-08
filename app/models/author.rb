class Author < ActiveRecord::Base
    has_many :poems
    has_many :genres, through: :poems
end