class CreateJobLocations < ActiveRecord::Migration
  def change
    create_table :job_locations do |t|
      t.belongs_to :job, index: true
      t.belongs_to :location, index: true
      t.timestamps null: false
    end
    add_foreign_key :job_locations, :jobs
    add_foreign_key :job_locations, :locations
    add_index(:job_locations, [:job_id, :location_id], :unique => true)

  end
end
