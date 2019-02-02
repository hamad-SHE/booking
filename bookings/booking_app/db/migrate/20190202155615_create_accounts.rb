class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.references :users, foreign_key: true
      t.references :trainers, foreign_key: true
      t.references :schedules, foreign_key: true
      t.references :clients, foreign_key: true
      t.references :bookings, foreign_key: true
      t.references :lesson_payments, foreign_key: true

      t.timestamps
    end
  end
end
