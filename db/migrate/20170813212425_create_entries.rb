class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :assignment
      t.string :standard1_grade
      t.string :standard2_grade
      t.string :standard3_grade
      t.string :standard4_grade
      t.string :standard5_grade
      t.string :standard6_grade
      t.string :standard7_grade
      t.string :standard8_grade
      t.string :standard9_grade
      t.string :standard10_grade
      t.string :standard11_grade
      t.string :standard12_grade
      t.text :comment
      t.integer :student_id
      t.timestamps
    end
    add_index :entries, :student_id
  end
end
