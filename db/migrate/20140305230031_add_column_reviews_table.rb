class AddColumnReviewsTable < ActiveRecord::Migration
  def up
  	add_column :reviews, :active, :boolean, default: false
  end

  def down
  	remove_column :reviews, :active
  end
end
