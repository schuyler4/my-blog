require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "padafas", content: "fadsfoiasdjof")
    @post.date = Date.new
    @post.save
  end

  def test_post
    assert @post.valid?
  end

  def test_post_title
    @post.title = ""
    assert_not @post.valid?
  end

  def test_post_content
    @post.content = ""
    assert_not @post.valid?
  end
end
