class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string   :title, null: false
      t.string   :content, null: false
      t.integer  :author_id, null: false

      t.timestamps
    end
  end
end
