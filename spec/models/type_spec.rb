require 'spec_helper'

describe Type do
  let(:upcoming) { Type.create(name: 'upcoming') }
  let(:create_type) { upcoming }

  it 'is invalid without a name' do
    expect(build(:type, name: nil)).to_not be_valid
  end

  it 'has movies' do
    create_type
    upcoming.movies.create(title: 'Bat-Man', image_file_name: 'batman')
    upcoming.movies.create(title: 'Captain America', image_file_name: 'capnam')
    expect(upcoming.movies.count).to eq(2)
  end
end
