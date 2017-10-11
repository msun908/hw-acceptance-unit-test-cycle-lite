require 'rails_helper'

describe MoviesHelper do
  include MoviesHelper

  it { oddness(1).should == "odd" }
end