class CreateClocks < ActiveRecord::Migration[5.0]
  def change
    create_table :clocks do |t|
      t.time :time

      t.timestamps
    end
  end
end
