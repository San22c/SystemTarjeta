class CreateMotivos < ActiveRecord::Migration
  def change
    create_table :motivos do |t|
      t.string :denom

      t.timestamps null: false
    end
  end
end
