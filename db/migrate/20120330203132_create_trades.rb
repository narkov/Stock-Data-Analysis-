class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.date :date
      t.time :time
      t.float :volume
      t.float :open
      t.float :close
      t.float :min
      t.float :max      

      t.timestamps
    end
  end
end
