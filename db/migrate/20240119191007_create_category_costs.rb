class CreateCategoryCosts < ActiveRecord::Migration[7.1]
  def change
    create_table :category_costs, id: false do |t|
      t.string :category_id
      t.string :cost_id
    end
  end
end
