class CreateCounts < ActiveRecord::Migration[5.0]
  def change
    create_table :counts do |t|
      t.integer "cnt"
      t.timestamps
    end
  end
end
