class AddImageToQ < ActiveRecord::Migration
  def change
    add_attachment :questions, :image
  end
end
