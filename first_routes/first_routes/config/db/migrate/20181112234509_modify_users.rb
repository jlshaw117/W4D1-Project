class ModifyUsers < ActiveRecord::Migration[5.2]
  def change
    drop_table :users

    create_table :users do |t|
      t.string :username, null: false
      t.timestamps
    end

    # remove_column :users, :name, :email

    add_index :users, :username, unique: true
  end
end
