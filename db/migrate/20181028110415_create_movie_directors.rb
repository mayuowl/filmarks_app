class CreateMovieDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_directors do |t|
      t.references :movie
      t.references :cast
      t.timestamps
    end
  end
end
