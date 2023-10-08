class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :author
      t.string :country
      t.string :imageLink
      t.string :language
      t.string :link
      t.integer :pages
      t.string :title
      t.integer :year

      t.timestamps
    end
  end
end
