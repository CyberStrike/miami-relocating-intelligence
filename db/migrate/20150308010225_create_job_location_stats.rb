class CreateJobLocationStats < ActiveRecord::Migration
  def change
    create_table :job_location_stats do |t|
      t.references :job, index: true
      t.references :location, index: true
      t.integer :available

      t.timestamps null: false
    end
    add_foreign_key :job_location_stats, :jobs
    add_foreign_key :job_location_stats, :locations
    add_index(:job_location_stats, [:job_id, :location_id], :unique => true)

  end
end
