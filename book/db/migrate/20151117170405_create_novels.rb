class CreateNovels < ActiveRecord::Migration
  def change
    create_table :novels do |t|
      t.string :book_name
      t.integer :author_id

      t.timestamps
    end
  end
end
