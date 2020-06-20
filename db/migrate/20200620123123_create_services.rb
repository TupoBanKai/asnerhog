class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
    t.string :name
    t.string :discription
    t.float :price
    t.timestamps
    end
  end
end
