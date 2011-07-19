class CreateAlerts < ActiveRecord::Migration
  def self.up
    create_table :alerts do |t|
      t.text :message
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :read
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :alerts
  end
end
