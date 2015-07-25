class CreateRecipeMealJoinTable < ActiveRecord::Migration
  def change
    create_join_table :recipes, :meals do |t|
      # t.index [:recipe_id, :meal_id]
      # t.index [:meal_id, :recipe_id]
    end
  end
end
