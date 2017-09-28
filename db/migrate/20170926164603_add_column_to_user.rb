class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :birthday, :date, default: nil
    add_column :users, :phone, :string, default: nil
    add_column :users, :summary, :text, default: nil
    add_column :users, :skills, :json, default: {}
  end
end
