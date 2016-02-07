class CreateQwwwotes < ActiveRecord::Migration
  def change
    create_table :qwwwotes do |t|
      t.text :quote
      t.string :author
      t.string :source
      t.string :source_url
      t.date :date
      t.string :tags
      t.text :notes
      t.timestamps null: false
    end
  end
end
