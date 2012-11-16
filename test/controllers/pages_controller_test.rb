require "minitest_helper"

describe PagesController do
  it "get home" do
    get :home
    response.must_be :success?
  end

  it "get contact" do
    get :contact
    response.must_be :success?
  end

  it "get about" do
    get :about
    response.must_be :success?
  end
end
