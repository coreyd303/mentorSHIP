require 'rails_helper'

RSpec.describe MentorsController, type: :controller do
include MentorBuilder

  before(:each) do
    user = User.create(profile_type: "Mentor",
                       profile_id: 1) 

    Student.create(name:      "Harry Potter",
                   bio:       "Wizard.",
                   cohort:    "1406",
                   mod_id:    1,
                   posse_id:  3) 
    session[:user_id] = user.id
  end

  describe 'GET index' do
    before(:each) do
      build_mentors
    end

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
    before(:each) do
      build_mentor
    end

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
    before(:each) do
      mentor_attributes
      invalid_mentor_attributes
    end

    context 'with valid params' do
      it 'creates a new mentor' do
        expect {
          post :create, mentor: @attributes
            }.to change(Mentor, :count).by 1
      end

      it 'redirects to the new contact' do
        post :create, mentor: @attributes

        expect(response).to redirect_to Mentor.last
      end
    end

  end

  describe 'PUT update' do
    before :each do
      build_mentor
      mentor_attributes
      new_mentor_attributes
      invalid_mentor_attributes
    end

    context "valid attributes" do
      it "located the requested @mentor" do
        put :update, id: @mentor, mentor: @attributes

        expect(assigns(:mentor)).to eq(@mentor)
      end

      it "changes @mentor's attributes" do
        put :update, id: @mentor, mentor: @new_attributes
        @mentor.reload

        expect(@mentor.name).to  eq("Big Bob")
        expect(@mentor.email).to eq("bob@example.com")
      end

      it "redirects to the updated mentor" do
        put :update, id: @mentor, mentor: @new_attributes

        expect(response).to redirect_to(@mentor)
      end
    end
    
     context 'without valid params' do
      it 'does not save without valid params' do
        expect {
          put :update, id: @mentor,  mentor: @invalid_attributes
        }.to_not change(Mentor, :count)
      end

      it 'redirects to back' do
        put :update, id: @mentor, mentor: @invalid_attributes

        expect(response).to render_template('edit')
      end
    end
  end
end
