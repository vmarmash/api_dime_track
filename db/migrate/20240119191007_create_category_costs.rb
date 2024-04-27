class CreateCategoryCosts < ActiveRecord::Migration[7.1]
  def change
    create_table :category_costs, id: false do |t|
      t.uuid :category_id
      t.uuid :cost_id
    end
  end
end
