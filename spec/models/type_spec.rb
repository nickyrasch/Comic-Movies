require 'spec_helper'

describe Type do
  it { should validate_presence_of :name }
  it { should have_many :movies }
end