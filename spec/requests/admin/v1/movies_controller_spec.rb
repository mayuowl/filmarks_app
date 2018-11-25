require "rails_helper"

describe Admin::V1::MoviesController, type: :request do
  describe "create" do
    subject { post(admin_v1_movies_path, params: params) }

    context "there are some data" do
      let(:params) { { movie: { title: title } } }
      let(:title) { "test_title" }

      it do
        aggregate_failures do
          expect { subject }.to change { Movie.count }.by(1)
          json = JSON.parse(response.body)
          expect(json["status"]).to eq 204
          movie = Movie.last
          expect(movie.title).to eq title
        end
      end
    end
  end
end