class AddBandwidthsValueNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:bandwidths, :value, false)
  end
end
