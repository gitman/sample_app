require "minitest_helper"

describe PagesController do
  it "should get home" do
    get :home
    response.must_be :success?
  end

  it "should get contact" do
    get :contact
    response.must_be :success?
  end

end
