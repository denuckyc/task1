class CreateServers < ActiveRecord::Migration[6.0]
  def change
    create_table :servers do |t|
      t.text :name

      t.timestamps
    end
  end
end
