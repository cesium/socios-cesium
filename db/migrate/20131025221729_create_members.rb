class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :member_number
      t.string :email
      t.string :phone
      t.datetime :birthday
      t.boolean :paid

      t.timestamps
    end
  end
end
