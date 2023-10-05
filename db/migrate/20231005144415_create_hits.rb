class CreateHits < ActiveRecord::Migration[7.0]
  def change
    create_table :hits do |t|
      t.integer :classement_id
      t.string :title
      t.string :artist
      t.string :image
      t.integer :order

      t.timestamps
    end
  end
end
