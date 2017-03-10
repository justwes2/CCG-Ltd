class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :date
      t.string :time
      t.string :name
      t.string :location
      t.string :organizer
      t.string :event_url

      t.timestamps
    end
  end
end
