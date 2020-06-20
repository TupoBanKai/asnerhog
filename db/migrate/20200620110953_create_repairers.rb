class CreateRepairers < ActiveRecord::Migration[5.1]
  def change
    create_table :repairers do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :discription
      t.string :profession

      t.timestamps
    end
  end
end