class CreateEducationalQualifications < ActiveRecord::Migration[5.1]
  def change
    create_table :educational_qualifications, primary_key: ["uuid"] do |t|
      t.string :uuid, limit: 36, null: false 
      t.string :user_id, limit: 36, null: false
      t.string :qualification_name, limit: 128
      t.string :institute_name, limit: 128
      t.string :enrolled_years, limit: 64
      t.string :graduation_date, limit: 18
      t.string :description
      t.string :major, limit: 128
      t.string :parent_body, limit: 128
      t.string :location, limit: 64
      t.string :result, limit: 32
      t.string :remarks, limit: 128

      t.timestamps
    end
  end
end
