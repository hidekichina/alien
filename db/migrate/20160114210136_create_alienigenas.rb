class CreateAlienigenas < ActiveRecord::Migration
  def change
    create_table :alienigenas do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
