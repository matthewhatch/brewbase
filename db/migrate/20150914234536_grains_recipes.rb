class GrainsRecipes < ActiveRecord::Migration
  def change
  	create_table :grains_recipes, id: false do |t|
      t.belongs_to :recipes, index: true
      t.belongs_to :grains, index: true
    end
  end
end
