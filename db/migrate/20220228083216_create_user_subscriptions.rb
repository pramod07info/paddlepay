class CreateUserSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :user_subscriptions do |t|
      t.string :plan_id
      t.string :plan_name
      t.string :paddle_user_id
      t.string :paddle_user_email
      t.belongs_to :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
