class AddUrlToRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :url, :string
  end
end
