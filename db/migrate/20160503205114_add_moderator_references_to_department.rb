class AddModeratorReferencesToDepartment < ActiveRecord::Migration[5.0]
  def change
    add_reference :departments, :moderator, foreign_key: true
  end
end
