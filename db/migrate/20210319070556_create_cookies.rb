class CreateCookies < ActiveRecord::Migration[6.1]
  def change
    create_table :cookies do |t|
      t.string :name

      t.timestamps
    end
  end
end
