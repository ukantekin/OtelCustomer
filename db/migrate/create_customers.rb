class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
      t.string :adress
      t.string :otelid

      t.timestamps
    end
  end
end
