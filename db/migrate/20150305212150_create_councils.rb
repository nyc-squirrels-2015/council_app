class CreateCouncils < ActiveRecord::Migration
  def change
    create_table :councils do |t|
      t.belongs_to :user, null: false
      t.string :council_name, null: false
      t.timestamps
    end
  end
end
