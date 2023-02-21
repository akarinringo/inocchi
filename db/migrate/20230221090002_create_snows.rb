class CreateSnows < ActiveRecord::Migration[6.1]
  def change
    create_table :snows do |t|
      t.string :spot
      t.string :address
      t.string :image
      t.string :hp
      t.string :telephone

      t.timestamps
    end
  end
end
