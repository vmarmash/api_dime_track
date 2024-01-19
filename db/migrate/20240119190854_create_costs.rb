class CreateCosts < ActiveRecord::Migration[7.1]
  def change
    create_table :costs, id: :uuid do |t|
      t.string  :user_id, null: false
      t.string  :name, null: false
      t.string  :amount, default: 0
      t.integer :currency, default: 0
      t.string  :rate_vault_id

      t.timestamps
    end
  end
end
