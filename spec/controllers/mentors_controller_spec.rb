require 'rails-helper'

RSpec.describe MentorsController, type: controller do
  
  describe 'GET index' do
    it 'assigns @mentors' do
      get :index
      expect(assigns(:mentors)).to eq(@mentors)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end