ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'capybara'

require 'app'


class CapybaraTestCase < Minitest::Unit::TestCase
  include Capybara::DSL

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end

Capybara.app = Sinatra::Application.new
