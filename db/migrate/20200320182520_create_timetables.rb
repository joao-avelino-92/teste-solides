class CreateTimetables < ActiveRecord::Migration[6.0]
  def change
    create_table :timetables do |t|
      t.references :user, null: false, foreign_key: true
      t.date :day
      t.time :getIn
      t.time :lunch
      t.time :getOut

      t.timestamps
    end
  end
end
