class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.date :date_start
      t.date :date_end
      t.string :statut
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
