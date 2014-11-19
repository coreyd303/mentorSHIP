require 'rails_helper'

RSpec.describe MentorsController, type: :controller do

  before(:each) do
    5.times do
      Mentor.create(name:    "Magik Mentor",
                    company: "Turing",
                    email:   "magik@example.com")
    end

    @mentors = Mentor.all
    @mentor  = Mentor.first
  end

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

  describe 'GET show' do
    it 'assigns @mentor' do
      get :show, id: @mentor.id
      expect(assigns(:mentor)).to eq(@mentor)
    end
    
    it 'renders the show template' do
      get :show, id: @mentor.id
      expect(response).to render_template('show')
    end
  end

  describe 'GET new' do
    it 'assigns a new mentor @mentor' do
      get :new
      expect(assigns(:mentor)).to be_a_new(Mentor)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new mentor' do
        mentor_attributes
        expect {
          post :create, mentor: @attributes
            }.to change(Mentor, :count).by 1
      end
    end
  end

  def mentor_attributes
    @attributes = {name:    "Old Greg",
                   company: "Bailey's",
                   email:   "ruby@example.com",
                   bio:     "Do you love me? Could you learn to love me?"}
  end

end