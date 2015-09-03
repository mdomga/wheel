class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content

      t.timestamps null: false

      t.belongs_to :user, index: true
      t.belongs_to :post, index: true
    end

    add_foreign_key :comments, :users, on_delete: :cascade
    add_foreign_key :comments, :posts, on_delete: :cascade
  end
end