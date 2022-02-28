class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :payment_id
      t.string :email_id

      t.timestamps
    end
  end
end
