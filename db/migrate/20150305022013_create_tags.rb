class CreateTags < ActiveRecord::Migration
  def change
    create_table :github_tags do |t|
      t.integer :github_repository_id
      t.string :name
      t.string :sha
      t.string :kind
      t.datetime :published_at

      t.timestamps null: false
    end
    add_index :github_tags, :github_repository_id
    add_index :github_tags, :name
  end
end