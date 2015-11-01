require 'rails_helper'

describe Eat do
  it { should validate_presence_of :name }
  it { should validate_presence_of :category}
  it { should validate_presence_of :address }
  it { should validate_presence_of :location }
  it { should validate_presence_of :neighborhood}

  it { should have_many :images }
  it { should have_many :favorites }
  it { should have_many(:users).through(:favorites) }
end
