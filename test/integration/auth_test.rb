require 'integration_test_helper'


class TestAuth < CapybaraTestCase
  def test_index_has_login_form
    visit '/'
    assert_equal 200, page.status_code
  end
end
