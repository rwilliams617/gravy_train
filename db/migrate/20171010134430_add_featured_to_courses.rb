class AddFeaturedToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :featured, :boolean
  end
end
