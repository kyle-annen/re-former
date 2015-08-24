class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, unique: true, presence: true, length: { in: 4..20 }
      t.string :email, unique: true, presence: true
      t.string :password, presence: true, length: { in: 8..20 }

      t.timestamps null: false
    end
  end
end
