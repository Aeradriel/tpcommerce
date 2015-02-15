class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :montant
      t.datetime :date
      t.belongs_to :user, index: true
      t.string :mode_paiement

      t.timestamps null: false
    end
    add_foreign_key :donations, :users
  end
end
