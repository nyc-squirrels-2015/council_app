class AddImageToQ < ActiveRecord::Migration
  def change
    add_attachment :questions, :image, null: false
  end
end
