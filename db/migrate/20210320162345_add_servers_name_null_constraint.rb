class AddServersNameNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:servers, :name, false)
  end
end
