class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :title
      t.integer :points
      t.integer :level
      t.text :summary
      t.binary :article
      t.text :link

      t.timestamps null: false
    end
  end
end
