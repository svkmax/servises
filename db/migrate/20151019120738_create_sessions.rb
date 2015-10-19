class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :provider

      t.references :user
      t.timestamps null: false
    end
  end
end
