class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories, id: :uuid do |t|
      t.uuid    :user_id, null: false
      t.string  :name
      t.string  :description

      t.timestamps
    end
  end
end
