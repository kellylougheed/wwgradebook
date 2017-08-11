class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :standard1
      t.string :standard2
      t.string :standard3
      t.string :standard4
      t.string :standard5
      t.string :standard6
      t.string :standard7
      t.string :standard8
      t.string :standard9
      t.string :standard10
      t.string :standard11
      t.string :standard12
      t.timestamps
    end
  end
end
