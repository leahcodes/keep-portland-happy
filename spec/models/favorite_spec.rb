require 'rails_helper'

describe Favorite do
  it { should belong_to :eat }
  it { should belong_to :user }
end
