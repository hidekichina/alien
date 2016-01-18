class Poder < ActiveRecord::Base

    has_many :alienigena_poders
    has_many :alienigenas, through: :alienigena_poders
end
