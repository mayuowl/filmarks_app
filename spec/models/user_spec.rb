require "rails_helper"

RSpec.describe User, type: :model do
  describe "validations" do
    subject { User.create!(params) }

    let(:params) { { name: name, account: account, email: email } }
    let(:name) { Faker::Name.name }
    let(:account) { SecureRandom.hex(8) }
    let(:email) { Faker::Internet.email }

    context "validates name" do
      context "presence" do
        context "success" do
          it { expect { subject }.not_to raise_error }
        end

        context "error" do
          let(:name) { "" }
          it { expect { subject }.to raise_error(ActiveRecord::RecordInvalid) }
        end
      end
    end

    xcontext "validates account" do
      context "presence" do
      end

      context "uniqueness" do
      end
    end

    xcontext "validates email" do
    end
  end
end
