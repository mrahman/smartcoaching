class CreateCoaches < ActiveRecord::Migration[5.1]
  def change
    create_table :coaches do |t|
      t.string :user_id
      t.string :first_name
      t.string :last_name
      t.string :dob
      t.text :subject_or_topics
      t.text :address
      t.attachment :avatar

      t.timestamps
    end
  end
end
