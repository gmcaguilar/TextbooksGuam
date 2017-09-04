class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
			t.string :title
			t.string :authors
			t.string :isbn10
			t.string :isbn13
			t.text :description
			t.references :user
      t.timestamps
    end
  end
end
