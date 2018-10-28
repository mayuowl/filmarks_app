class CreateUserMovieStars < ActiveRecord::Migration[5.2]
  def change
    create_table :user_movie_stars do |t|
      t.references :user
      t.references :movie 
      t.timestamps
    end       
  end
end
