class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :question, null: false
      t.belongs_to :user, null: false
      t.boolean :like, null: false

      t.timestamps
    end
  end
end
