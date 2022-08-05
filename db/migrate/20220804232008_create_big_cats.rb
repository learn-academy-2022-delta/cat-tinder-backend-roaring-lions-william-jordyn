class CreateBigCats < ActiveRecord::Migration[7.0]
  def change
    create_table :big_cats do |t|
      t.string :name
      t.integer :age
      t.text :enjoys
      t.text :funfact
      t.text :image

      t.timestamps
    end
  end
end
