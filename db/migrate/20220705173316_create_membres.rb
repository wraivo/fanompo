class CreateMembres < ActiveRecord::Migration[7.0]
  def change
    create_table :membres do |t|
      t.string :fiantso
      t.string :anarana
      t.string :fanampiny
      t.boolean :tsyeo
      t.text :fanamarih

      t.timestamps
    end
  end
end
