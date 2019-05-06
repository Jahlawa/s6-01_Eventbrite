class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.string :stripe_customer_id
      t.belongs_to :user_id
      t.belongs_to :event_id

      t.timestamps
    end
  end
end
