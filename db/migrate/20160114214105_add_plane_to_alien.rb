class AddPlaneToAlien < ActiveRecord::Migration
  def change
    add_reference :alienigenas, :planet, index: true
  end
end
