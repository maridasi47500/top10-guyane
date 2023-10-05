class CreateClassements < ActiveRecord::Migration[7.0]
  def change
    create_table :classements do |t|
      t.date :date

      t.timestamps
    end
  end
end
