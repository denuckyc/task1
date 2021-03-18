class CreateBandwidths < ActiveRecord::Migration[6.0]
  def change
    create_table :bandwidths do |t|
      t.references :server, null: false, foreign_key: true
      t.float :value
      t.text :interface_name
      t.serial :value_id

      t.timestamps
    end
  end
end
