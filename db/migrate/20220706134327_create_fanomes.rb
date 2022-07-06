class CreateFanomes < ActiveRecord::Migration[7.0]
  def change
    create_table :fanomes do |t|
      t.integer :mb
      t.integer :svc

      t.timestamps
    end
  end
end
