class CreateUserMovieClip < ActiveRecord::Migration[5.2]
  def change
    create_table :user_movie_clips do |t|
      t.references :user
      t.references :movie
    end
  end
end
