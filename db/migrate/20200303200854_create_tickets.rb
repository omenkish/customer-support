class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :status

      t.timestamps
    end
  end
end
