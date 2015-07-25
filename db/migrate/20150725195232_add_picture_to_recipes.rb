class AddPictureToRecipes < ActiveRecord::Migration
  def up
    add_attachment :recipes, :picture
  end

  def down
  	remove_attachment :recipes, :picture
  end
end
