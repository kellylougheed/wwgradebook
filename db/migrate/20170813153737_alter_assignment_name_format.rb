class AlterAssignmentNameFormat < ActiveRecord::Migration[5.0]
  def change
    change_column :assignments, :name, :string
  end
end
