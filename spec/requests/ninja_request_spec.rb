require "spec_helper"
describe "ninja" do
  it "creates a ninja with name and description" do
    get "/ninjas/new"
    expect(response).to render_template(:new)
    post "/ninjas", :ninja => {:name => "My Ninja",:description => "This is a description"}
    # expect(response).to redirect_to(assigns(:ninjas))
    follow_redirect!
    expect(response).to render_template(:success)
    expect(response.body).to include("Form submitted successfully!")
  end
end