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

  describe "create" do
    describe "with valid params" do
      it "saves the student in the database" do
        @attributes = {name: "Harry Potter", bio: "Words about Harry Potter.", cohort: "1406", module_id: 1}
        expect { post :create, student: @attributes}.to change(Student, :count).by 1
      end
    end
  end
end
