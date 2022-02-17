class CreateCurses < ActiveRecord::Migration[6.1]
  def change
    create_table :curses do |t|
      t.references :monster, null: false, foreign_key: true
      t.references :power, null: false, foreign_key: true

      t.timestamps
    end
  end
end
