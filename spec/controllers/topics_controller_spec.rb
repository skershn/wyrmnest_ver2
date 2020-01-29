require 'rails_helper'

RSpec.describe TopicsController, type: :controller do
  describe "topics#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end 

  describe "topics#new action" do
    it "should successfully show the new form" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "topics#create action" do
    it "should successfully create a new topic post in our database" do
      post :create, params: { topic: { title: 'Hello!', content: 'This is a test post!' } }
      expect(response).to redirect_to root_path

      topic = Topic.last
      expect(topic.title).to eq("Hello!")
      expect(topic.content).to eq("This is a test post!")
    end
  end

end
