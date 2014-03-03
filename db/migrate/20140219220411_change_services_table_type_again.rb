class ChangeServicesTableTypeAgain < ActiveRecord::Migration
  def change
  	change_column :services, :description, :string
  end
end
