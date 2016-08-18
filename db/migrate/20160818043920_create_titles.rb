class CreateTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :titles do |t|
      t.string "name"
      t.integer "cnt"
      t.timestamps
    end
  end
end
