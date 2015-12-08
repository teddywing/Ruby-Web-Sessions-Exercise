require 'integration_test_helper'


class TestAuth < CapybaraTestCase
  def login(username, password)
    visit '/'
    fill_in 'username', :with => username
    fill_in 'password', :with => password
    click_button 'Login'
  end

  def login_with_correct_credentials
    login('hubertfarnsworth', 'secret')
  end


  def test_index_has_login_form
    visit '/'
    assert_text 'Login'
    assert has_selector?('//form')
  end

  def test_unrecognised_user_login
    login('unregistered', 'password')

    assert_text 'Unrecognized user'
  end

  def test_login
    login_with_correct_credentials

    assert_equal 200, page.status_code
  end
end
