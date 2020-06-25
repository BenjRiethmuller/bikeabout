class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
