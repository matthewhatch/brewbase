class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
