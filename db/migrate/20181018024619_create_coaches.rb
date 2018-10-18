class CreateCoaches < ActiveRecord::Migration[5.1]
  def change
    create_table :coaches do |t|
      t.string :name
      t.text :subject_or_topics
      t.text :address

      t.timestamps
    end
  end
end
