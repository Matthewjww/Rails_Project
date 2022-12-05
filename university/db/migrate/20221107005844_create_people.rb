class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :number
      t.string :email
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
