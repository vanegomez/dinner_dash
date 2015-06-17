class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :status, default: 0
      t.integer :total_price

      t.timestamps null: false
    end
  end
end
