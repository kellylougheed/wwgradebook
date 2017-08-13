class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :course_id
      t.timestamps
    end

    add_index :students, :course_id
  end
end
