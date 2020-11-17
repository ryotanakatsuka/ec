class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.string :title
      t.string :text
      t.references :user,foreign_key: true
      t.timestamps
    end
  end
end
