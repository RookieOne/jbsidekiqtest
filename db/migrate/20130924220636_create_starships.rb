class CreateStarships < ActiveRecord::Migration
  def change
    create_table :starships do |t|
      t.string :name
      t.integer :count

      t.timestamps
    end
  end
end
