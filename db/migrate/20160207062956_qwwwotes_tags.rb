class QwwwotesTags < ActiveRecord::Migration
  def change

    create_table :qwwwotes_tags, id: false do |t|
      t.integer :qwwwote_id
      t.integer :tag_id
    end

    add_index :qwwwotes_tags, :qwwwote_id
    add_index :qwwwotes_tags, :tag_id


  end
end
