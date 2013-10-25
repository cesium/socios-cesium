class AddResponsibleToMembers < ActiveRecord::Migration
  def change
    add_reference :members, :responsible, index: true
  end
end
