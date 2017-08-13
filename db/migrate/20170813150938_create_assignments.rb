class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.text :name
      t.boolean :has_standard1
      t.boolean :has_standard2
      t.boolean :has_standard3
      t.boolean :has_standard4
      t.boolean :has_standard5
      t.boolean :has_standard6
      t.boolean :has_standard7
      t.boolean :has_standard8
      t.boolean :has_standard9
      t.boolean :has_standard10
      t.boolean :has_standard11
      t.boolean :has_standard12
      t.integer :course_id
      t.timestamps
    end
    add_index :assignments, :course_id
  end
end
