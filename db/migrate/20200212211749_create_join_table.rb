class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :projects, :workers do |t|
      t.index [:project_id, :worker_id]
      t.index [:worker_id, :project_id]
    end
  end
end
