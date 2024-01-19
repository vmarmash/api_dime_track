class CreateRateVaults < ActiveRecord::Migration[7.1]
  def change
    create_table :rate_vaults, id: :uuid do |t|
      t.string  :usd
      t.string  :eur

      t.timestamps
    end
  end
end
