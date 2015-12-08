require 'integration_test_helper'


class TestAuth < CapybaraTestCase
  def setup
    visit '/'
  end

  def test_index_has_login_form
    assert_text 'Login'
    assert has_selector?('//form')
  end

  def test_unrecognised_user_login
    fill_in 'username', :with => 'unregistered'
    fill_in 'password', :with => 'password'
    click_button 'Login'

    assert_text 'Unrecognized user'
  end

  def test_login
    fill_in 'username', :with => 'hubertfarnsworth'
    fill_in 'password', :with => 'secret'
    click_button 'Login'

    assert_equal 200, page.status_code
  end
end
