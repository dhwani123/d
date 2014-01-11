class CreateRstuds < ActiveRecord::Migration
  def change
    create_table :rstuds do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.date :dob
      t.string :address
      t.string :fathername
      t.string :mothername
      t.string :f_qaulification

      t.timestamps
    end
  end
end
