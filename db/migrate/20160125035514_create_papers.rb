class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :name
      t.text :content
      t.string :slug

      t.timestamps null: false
    end
    add_index :papers, :slug, unique: true
  end
end
