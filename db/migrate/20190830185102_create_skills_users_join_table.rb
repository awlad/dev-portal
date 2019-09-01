class CreateSkillsUsersJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :skills_users, id: false do |t|
      t.bigint :skill_id
      t.bigint :user_id
    end
    add_index :skills_users, :user_id
    add_index :skills_users, :skill_id
  end
end
