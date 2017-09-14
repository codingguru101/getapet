require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    password = Faker::Internet.unique.password
    @user = User.create(
      username: Faker::Internet.unique.user_name,
      email: Faker::Internet.unique.email,
      password: password
    )
    p password
    p @user
  end

  test "should be valid" do
    assert @user.valid?
  end
end
