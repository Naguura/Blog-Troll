class AddUserIdToArticles < ActiveRecord::Migration[6.0]
  def change
  	add_column :articles, :articles_id, :integer
  end
end
