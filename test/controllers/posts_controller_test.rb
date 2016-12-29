require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @post = Post.new(title: "pandas", content: "this is the best pandas")
    @post.save
  end

  def test_new
    get new_post_url
    assert_response :success
  end

  def test_index
    get posts_url
    assert_response :success
  end

  def test_show
    get post_url(@post)
    assert_response :success
  end

  def test_edit
    get edit_post_url(@post)
    assert_response :success
  end

  def test_create
    post posts_url params: {post: {title: "panda", content: "we love pandas"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  def test_update
    put post_url @post, params: {post: {title: "panda to come", content: "we are pandas soon"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

  def test_destroy
    delete post_url(@post)
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
