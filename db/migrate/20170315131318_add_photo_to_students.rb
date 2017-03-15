class AddPhotoToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :photo_url, :string
  end
end
