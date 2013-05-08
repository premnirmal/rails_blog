class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :article

      t.timestamps
    end
    add_index :tags, :article_id
  end
end
