class CreatePostImages < ActiveRecord::Migration[8.0]
  def change
    create_table :post_images do |t|
      t.references :user, null: false, foreign_key: true
      t.string :image
      t.text :caption

      t.timestamps
    end
  end
end
