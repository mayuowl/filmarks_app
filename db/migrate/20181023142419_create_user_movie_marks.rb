class CreateUserMovieMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_movie_marks do |t|
      t.references :user
      t.references :movie
    end
  end
end
