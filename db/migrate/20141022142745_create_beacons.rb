class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :label
      t.string :url
      t.references :movie
      t.index [:movie_id, :label], unique: true

      t.timestamps
    end
  end
end
