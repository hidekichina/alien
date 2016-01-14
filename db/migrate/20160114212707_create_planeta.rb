class CreatePlaneta < ActiveRecord::Migration
  def change
    create_table :planeta do |t|
      t.string :name

      t.timestamps
    end
  end
end
