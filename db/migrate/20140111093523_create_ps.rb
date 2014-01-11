class CreatePs < ActiveRecord::Migration
  def change
    create_table :ps do |t|
      t.string :name

      t.timestamps
    end
  end
end
