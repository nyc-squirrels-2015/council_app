class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :user, null: false
      t.belongs_to :council, null: false
      t.string :content, null: false
      t.has_attached_file :image
      t.timestamps
    end
  end
end
