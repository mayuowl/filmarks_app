require "rails_helper"

describe Admin::V1::MoviesController, type: :request do
  describe "create" do
    subject { post(admin_v1_movies_path, params: params) }

    context "new data" do
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

  describe "update" do
    subject { put(admin_v1_movie_path(movie.id), params: params) }

    context "a data" do
      let!(:movie) { create(:movie) }
      let(:params) { { movie: { title: title } } }
      let(:title) { Faker::Cat.name }

      it do
        aggregate_failures do
          subject
          json = JSON.parse(response.body)
          expect(json["status"]).to eq 200
          _data = json["data"]
          expect(_data["title"]).to eq title
        end
      end
    end
  end

  describe "destroy" do
    subject { post(admin_v1_movies_path, params: params) }

    context "destroy data" do
      let(:params) { { movie: { title: title } } }
      let(:title) { "test_title" }

      it do
        aggregate_failures do
          expect { subject }.to change { Movie.count }.by(-1)
          json = JSON.parse(response.body)
          expect(json["status"]).to eq 204
          movie = Movie.last
          expect(movie.title).to eq title
        end
      end
    end
  end
end