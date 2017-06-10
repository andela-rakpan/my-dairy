class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :description
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
