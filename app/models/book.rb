class Book < ActiveRecord::Base
    has_many :booksinlists
end
