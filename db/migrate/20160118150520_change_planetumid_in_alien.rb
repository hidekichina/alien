class ChangePlanetumidInAlien < ActiveRecord::Migration
  def change
    add_reference :alienigenas, :planetum, index: true
  end
end
