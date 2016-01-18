class RemovesPLanetidFromAlien < ActiveRecord::Migration
  def change
    remove_column :alienigenas, :planet_id
  end
end
