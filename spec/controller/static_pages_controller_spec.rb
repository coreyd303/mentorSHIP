require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do
include MentorBuilder

  describe "GET index" do
    before(:each) do
      build_mentors
    end

    it 'assigns @mentors' do
      get :index
      expect(assigns(:trips)).to eq(@trips)
    end


    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end