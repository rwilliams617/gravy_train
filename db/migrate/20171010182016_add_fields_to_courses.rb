class AddFieldsToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :title, :string
    add_column :courses, :price, :decimal
    add_column :courses, :image_url, :string
  end
end
