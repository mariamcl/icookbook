class RemoveMealIdFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :meal_id, :integer
  end
end
