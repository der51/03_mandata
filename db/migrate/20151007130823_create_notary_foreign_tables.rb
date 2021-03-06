class CreateNotaryForeignTables < ActiveRecord::Migration
  def change
    create_table :notary_foreign_tables do |t|
      t.string :realname
      t.string :sex
      t.integer :age
      t.string :id_no
      t.string :table_no
      t.string :use_country
      t.text :now_address

      t.text :before_abroad_address
      t.date :abroad_day

      t.string :translate_lang
      t.string :email
      t.string :mobile
      t.integer :file_num
      t.string :require_notary
      t.integer :photo_num
      t.text :work_unit

      t.date :birth_day
      t.text :comment
      t.string :agent_name
      t.string :agent_relation
      t.string :agent_mobile
      t.text :agent_address
      t.string :sync_status
      t.string :purpose
      t.integer :user_id

      t.string :notary_use
      t.string :reserve_day
      t.integer :reservation_id
      t.string :reserve_hour

      t.integer :notary_record_id
      t.boolean :user_verified, default: false
      t.datetime :reserve_at

      t.timestamps null: false
    end
  end
end
