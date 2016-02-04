require File.dirname(__FILE__) + '/../test_helper'

class UserTest < Test::Unit::TestCase
  fixtures :users

  def test_should_be_invalid
    user = create(:name => nil, :description => nil, :status => nil)
    assert_invalid user, "User shouldn't be created"
  end

  def test_should_require_name
    user = create(:name => nil)
    assert user.errors.invalid?(:name), ":name should be required"
    assert_invalid user, "User shouldn't be created"
  end

  def test_should_require_description
    user = create(:description => nil)
    assert user.errors.invalid?(:description), ":description should be required"
    assert_invalid user, "User shouldn't be created"
  end

  def test_should_deny_duplicate_user
    user = create
    assert_valid user

    user = create
    assert_invalid user, "User shouldn't be created"
  end
  private
    def create(options={})
      User.create({
        :name => "Rafa Santos",
        :email => "faela@santos.com",
        :password => "test"
        }.merge(options))
    end
end