class CreateMerchants < ActiveRecord::Migration[7.0]
  def change
    create_table :merchants do |t|
      t.string :name, null: false
      t.string :owner, null: false
      t.integer :branch_count, null: false
      t.string :phone, null: false
      t.string :location, null: false
      t.string :whatsapp
      t.string :instagram

      t.timestamps
    end
  end
end
