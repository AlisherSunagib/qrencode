class CreateCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :codes do |t|
      t.string :text
      t.time :date

      t.timestamps
    end
  end
end
