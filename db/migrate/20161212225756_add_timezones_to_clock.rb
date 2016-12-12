class AddTimezonesToClock < ActiveRecord::Migration[5.0]
  def change
    add_column :clocks, :timezone, :integer
  end
end
