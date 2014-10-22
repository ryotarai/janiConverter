require 'rails_helper'

describe Beacon, type: :model do
  let(:movie) { create(:movie) }

  describe "unique validation" do
    context "when try to create beacon with same label to a movie" do
      before do
        new_beacon = build(:beacon, movie: movie)
        movie.beacons.create!(new_beacon.attributes)
      end

      it "raises error" do
        expect{ movie.beacons.create!(new_beacon.attributes) }.to raise_error
      end
    end
  end
end
