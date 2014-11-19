require "rails_helper"

RSpec.describe StudentsController, type: :controller do
  describe "new" do
    it "assigns a new student to @student" do
      get :new
      expect(assigns(:student)).to be_a_new(Student)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template('new')
    end
  end
end
