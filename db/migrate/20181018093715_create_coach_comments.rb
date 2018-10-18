class CreateCoachComments < ActiveRecord::Migration[5.1]
  def change
    create_table :coach_comments do |t|
      t.string :commenter
      t.string :title
      t.text :body
      t.references :coach, foreign_key: true

      t.timestamps
    end
  end
end
