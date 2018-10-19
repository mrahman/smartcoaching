class CreateStudentComments < ActiveRecord::Migration[5.1]
  def change
    create_table :student_comments do |t|
      t.string :commenter
      t.string :title
      t.text :body
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
