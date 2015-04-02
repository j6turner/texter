class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :firstName
      t.string :lastName
      t.integer :phoneNumber
      t.timestamps
    end

    remove_column :messages, :to, :string
    add_column :messages, :to, :integer
    remove_column :messages, :from, :string
    add_column :messages, :from, :integer
  end
end
