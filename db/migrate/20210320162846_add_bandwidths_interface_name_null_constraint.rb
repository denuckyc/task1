class AddBandwidthsInterfaceNameNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:bandwidths, :interface_name, false)
  end
end
