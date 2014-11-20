require "rails_helper"

RSpec.describe StudentsController, type: :controller do
  let(:student) { Student.create(name:      "Harry Potter",
                                 bio:       "Wizard. Voldemort wishes he had my style.",
                                 cohort:    "1406",
                                 module_id: 1) }

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
        @attributes = { name: "Harry Potter", bio: "Words about Harry Potter.", cohort: "1406", module_id: 1 }

        expect { post :create, student: @attributes}.to change(Student, :count).by 1
      end

      it "saves the student in the database wihtout a bio" do
        @attributes = { name: "Harry Potter", bio: nil, cohort: "1406", module_id: 1 }

        expect { post :create, student: @attributes}.to change(Student, :count).by 1
      end

      it "redirects to the new student's profile" do
        @attributes = { name: "Harry Potter", bio: "Words about Harry Potter.", cohort: "1406", module_id: 1 }
        post :create, student: @attributes

        expect(response).to redirect_to Student.last
      end
    end

    describe "with invalid params" do
      it "does not save the new student without a name" do
        @invalid_attributes = { name: nil, bio: "Words about Harry Potter.", cohort: "1406", module_id: 1 }

        expect { post :create, student: @invalid_attributes}.not_to change(Student, :count)
      end

      it "does not save the new student without a cohort" do
        @invalid_attributes = { name: "Harry Potter", bio: "Words about Harry Potter.", cohort: nil, module_id: 1 }

        expect { post :create, student: @invalid_attributes}.not_to change(Student, :count)
      end

      it "does not save the new student without a module" do
        @invalid_attributes = { name: "Harry Potter", bio: "Words about Harry Potter.", cohort: "1406", module_id: nil }

        expect { post :create, student: @invalid_attributes}.not_to change(Student, :count)
      end

      it "re-renders the new template if student is not saved" do
        @invalid_attributes = { name: "Harry Potter", bio: "Words about Harry Potter.", module_id: 1 }
        post :create, student: @invalid_attributes

        expect(response).to render_template('new')
      end
    end
  end

  describe "show" do
    it "assigns the requested student to @student" do
      user = student
      get :show, id: student
      expect(user).to eq(student)
    end

    it "renders the show view" do
      get :show, id: student

      expect(response).to render_template('show')
    end
  end
end
