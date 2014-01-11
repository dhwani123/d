class CreateRteaches < ActiveRecord::Migration
  def change
    create_table :rteaches do |t|
      t.string :Firstname
      t.string :Middlename
      t.string :Lastname
      t.string :Address
      t.date :Dateofbirth
      t.string :Qaulification
      t.string :Experience
      t.string :Specification
      t.timestamps
    end
  end
end
