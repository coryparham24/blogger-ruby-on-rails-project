class CreateTaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :taggings do |t|
      t.references :tag, index: true
      t.references :article, index: true

      t.timestamps
    end
    add_foreign_key :taggings, :tags
    add_foreign_key :taggings, :articles
  end
end
