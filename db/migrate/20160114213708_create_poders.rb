class CreatePoders < ActiveRecord::Migration
  def change
    create_table :poders do |t|
      t.string :name

      t.timestamps
    end
  end
end
