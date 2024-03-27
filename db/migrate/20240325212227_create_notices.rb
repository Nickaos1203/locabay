class CreateNotices < ActiveRecord::Migration[7.1]
  def change
    create_table :notices do |t|
      t.float :note
      t.text :comment
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
