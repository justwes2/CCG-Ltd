class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :linkedin_url
      t.string :github_url
      t.text :bio

      t.timestamps
    end
  end
end
