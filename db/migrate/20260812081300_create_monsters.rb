class CreateMonsters < ActiveRecord::Migration[8.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :image_url
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
