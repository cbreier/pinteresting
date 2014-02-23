class AddUserIdToPins < ActiveRecord::Migration
  def change
  	Pin.reset_column_information
    add_column :pins, :user_id, :integer
    add_index :pins, :user_id
  end
end
