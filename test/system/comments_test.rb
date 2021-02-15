require "application_system_test_case"

class CommentsTest < ApplicationSystemTestCase
  setup do
    @comment = comments(:one)
  end

  test "visiting the index" do
    visit comments_url
    assert_selector "h1", text: "Comments"
  end

  test "creating a Comment" do
    visit comments_url
    click_on "New Comment"

    fill_in "Comment body", with: @comment.comment_body
    fill_in "Comment image", with: @comment.comment_image_id
    fill_in "Comment title", with: @comment.comment_title
    fill_in "Tweet", with: @comment.tweet_id
    fill_in "User", with: @comment.user_id
    click_on "Create Comment"

    assert_text "Comment was successfully created"
    click_on "Back"
  end

  test "updating a Comment" do
    visit comments_url
    click_on "Edit", match: :first

    fill_in "Comment body", with: @comment.comment_body
    fill_in "Comment image", with: @comment.comment_image_id
    fill_in "Comment title", with: @comment.comment_title
    fill_in "Tweet", with: @comment.tweet_id
    fill_in "User", with: @comment.user_id
    click_on "Update Comment"

    assert_text "Comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment" do
    visit comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment was successfully destroyed"
  end
end
