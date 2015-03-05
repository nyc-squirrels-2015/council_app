class CreateCouncilMemberships < ActiveRecord::Migration
  def change
    create_table :council_memberships do |t|
      t.belongs_to :user, null: false
      t.belongs_to :council, null: false
    end
  end
end
