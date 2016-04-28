class AddUserIdColumntoCreateItems < ActiveRecord::Migration
  def change
      add_column :create_items, :category, :user_id
  end
end

