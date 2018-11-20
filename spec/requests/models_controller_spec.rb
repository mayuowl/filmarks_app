require "rails_helper"
describe MoviesController, type: :request do
  describe "index" do
    subject { get(movies_path) }
    context do
      let!(:movie) { create(:movie) }
      before { create_list(:movie, 2) }

      fit do
        subject
        json = JSON.parse(response.body)

        aggregate_failures do
          expect(json["status"]).to eq 200
          expect(json["data"].count).to eq 3
          _movie = json["data"][0]
          expect(_movie["title"]).to eq movie.title
          binding.pry
        end
      end
    end
  end
  describe "index" do
    subject { get(movies_path) }
    context do
      let!(:movie) { create(:movie) }
      before { create_list(:movie, 2) }

      it do
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
