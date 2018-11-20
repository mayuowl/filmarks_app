require "rails_helper"
describe UsersController, type: :request do
  describe "index" do
    subject { get(users_path) }

    context "there are some data" do
      let!(:user) { create(:user) }
      before { create_list(:user, 2) }

      it do
        subject
        json = JSON.parse(response.body)

        aggregate_failures do
          expect(json["status"]).to eq 200
          expect(json["data"].count).to eq 3
          _user = json["data"][0]
          expect(_user["name"]).to eq user.name
          expect(_user["account"]).to eq user.account
          expect(_user["email"]).to eq user.email
        end
      end
    end
  end
end
