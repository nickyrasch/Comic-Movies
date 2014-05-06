require 'spec_helper'

describe Side do
  it 'is invalid without a name' do
    expect(Side.new(name: nil)).to_not be_valid
  end
end 