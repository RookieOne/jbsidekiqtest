class CreateCrewMembers < ActiveRecord::Migration
  def change
    create_table :crew_members do |t|
      t.references :starship, index: true
      t.string :name
      t.integer :count

      t.timestamps
    end
  end
end
