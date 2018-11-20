require "rails_helper"

RSpec.describe Movie, type: :model do
  describe "validations" do
    subject { Movie.create!(params) }

    let(:params) { { title: title } }
    let(:title) { Faker::Movie.quote }

    context "validates name" do
      context "presence" do
        context "success" do
          it { expect { subject }.not_to raise_error }
        end

        context "error" do
          let(:title) { "" }
          it { expect { subject }.to raise_error(ActiveRecord::RecordInvalid) }
        end
      end
    end
  end
end
