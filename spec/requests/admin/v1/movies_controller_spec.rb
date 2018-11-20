require "rails_helper"
describe Admin::V1::MoviesController, type: :request do
  describe "create" do
    subject { post(admin_v1_movies_path, params: "params") }

    context "there are some data" do
      let(:params) { { title: title } }
      let(:title) { "test_title" }

      fit do
        binding.pry
        subject
        json = JSON.parse(response.body)

        aggregate_failures do
          expect(json["status"]).to eq 200
          expect(json["data"].count).to eq 3
          _movie = json["data"][0]
          expect(_movie["title"]).to eq movie.title
        end
      end
    end
  end
end