class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer:account_no
      t.string:account_holder_name

      t.timestamps
    end
  end
end
