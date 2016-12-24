class AddColumnsToEssays < ActiveRecord::Migration[5.0]
  def change
    add_column :essays, :title, :string
    add_column :essays, :body, :text
  end
end
