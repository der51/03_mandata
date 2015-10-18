class CreateNotaryRecords < ActiveRecord::Migration
  def change
    create_table :notary_records do |t|
      t.string :notary_type
      t.integer :notary_id

      t.timestamps null: false
    end
  end
end
