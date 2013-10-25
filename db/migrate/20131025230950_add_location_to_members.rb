class AddLocationToMembers < ActiveRecord::Migration
  def change
    add_reference :members, :location, index: true
  end
end
