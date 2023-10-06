class CreateHits < ActiveRecord::Migration[7.0]
  def change
    create_table :hits do |t|
      t.integer :classement_id
      t.integer :song_id
      t.string :image
      t.integer :myorder

      t.timestamps
    end
  end
end
