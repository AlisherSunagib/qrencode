class CreateQrcodes < ActiveRecord::Migration[5.2]
  def change
    create_table :qrcodes do |t|

      t.timestamps
    end
  end
end
