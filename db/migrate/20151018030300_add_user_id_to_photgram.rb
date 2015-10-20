class AddUserIdToPhotgram < ActiveRecord::Migration
  def change
    add_column :photgrams, :user_id, :integer, index: true
  end
end
