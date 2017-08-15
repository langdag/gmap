class CreateStores < ActiveRecord::Migration[5.1]
  def up
    create_table :stores do |t|
      t.column :country, :string, :limit => 50
      t.column :name, :string, :limit => 50
      t.column :address, :string, :limit => 100
      t.column :city, :string, :limit => 50 
      t.column :lat, :string, :limit => 20
      t.column :lng, :string, :limit => 20
      t.timestamps
    end
  end

  def down
  	drop_table :stores
  end
end
