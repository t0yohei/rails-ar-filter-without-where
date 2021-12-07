class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :author_id
      t.string :book_type
    end
  end
end
