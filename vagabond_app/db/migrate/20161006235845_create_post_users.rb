class CreatePostUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :post_users do |t|

      t.timestamps
    end
  end
end
