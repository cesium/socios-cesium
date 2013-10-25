class AddCourseToMembers < ActiveRecord::Migration
  def change
    add_reference :members, :course, index: true
  end
end
