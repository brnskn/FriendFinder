class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :bdy

      t.timestamps
    end
  end
end
