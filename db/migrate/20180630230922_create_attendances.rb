class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.string :studid
      t.date :date
      t.boolean :status

      t.timestamps
    end
  end
end
