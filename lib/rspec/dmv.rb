require "rspec/dmv/version"
require "rspec/dmv/validation_generator"
require 'rspec/core'
require 'shoulda/matchers'

module RSpec
  module Dmv 
    include RSpec::Dmv::ValidationGenerator
  end 
end

RSpec.configure do |rspec|
  rspec.extend RSpec::Dmv
end

RSpec::SharedContext.send(:include, RSpec::Dmv)
