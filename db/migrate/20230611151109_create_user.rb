class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.references :payment, foreign_key: true
      t.timestamps
    end  
  end
end
