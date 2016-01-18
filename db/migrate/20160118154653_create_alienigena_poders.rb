class CreateAlienigenaPoders < ActiveRecord::Migration
  def change
    create_table :alienigena_poders do |t|
      t.references :alien, index: true
      t.string :power

      t.timestamps
    end
  end
end
