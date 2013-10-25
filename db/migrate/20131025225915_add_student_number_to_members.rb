class AddStudentNumberToMembers < ActiveRecord::Migration
  def change
  	add_column :members, :student_number, :string
  end
end
