class CreateYeasts < ActiveRecord::Migration
  def change
    create_table :yeasts do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
