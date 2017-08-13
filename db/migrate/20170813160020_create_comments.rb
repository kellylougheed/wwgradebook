class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :message
      t.integer :student_id
      t.timestamps
    end
    add_index :comments, :student_id
  end
end
