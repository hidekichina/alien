class Alienigena < ActiveRecord::Base
    belongs_to :planetum

    has_many :alienigena_poders
    has_many :poders, through: :alienigena_poders
     validates_presence_of  :name
end
