class RecipesGrains < ActiveRecord::Migration
  def change
  	create_table :recipes_grains, id: false do |t|
      t.belongs_to :recipes, index: true
      t.belongs_to :grains, index: true
    end
  end
end
