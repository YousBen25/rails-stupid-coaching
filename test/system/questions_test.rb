require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "saying right answer to try response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work right now!"
    click_on "Ask"

    assert_text "Great!"
  end

  test "testing answer contains p text you" do
    visit answer_url
    assert_selector "p", text: "You"
  end
end
