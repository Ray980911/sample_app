require 'test_helper'

class MicropostTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @micropost = @user.microposts.build(content: "Lorem ipsum")
  end

  # マイクロポストが有効か？ true is ok
  test "should be valid?" do
    assert @micropost.valid?
  end

  # user_idがnilのユーザーが有効か？ false is ok
  test "user is should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end

  # micropostがnilは有効か？ false is ok
  test "conetnt should be present" do
    @micropost.content = " "
    assert_not @micropost.valid?
  end

  # micropostのcontentが141文字以上は有効か？ false is ok
  test "content should be at most 140 characters" do
    @micropost.content = "a"*141
    assert_not @micropost.valid?
  end

  test "order should be most recent first" do
    assert_equal microposts(:most_recent), Micropost.first
  end
end
