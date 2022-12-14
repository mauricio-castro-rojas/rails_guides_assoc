class CreateAccountHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :account_histories do |t|
      t.integer :credit_rating
      t.references :account, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
