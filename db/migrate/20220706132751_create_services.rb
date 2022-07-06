class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.integer :svcID
      t.string :fohy
      t.string :lava
      t.string :fanamarih

      t.timestamps
    end
  end
end
