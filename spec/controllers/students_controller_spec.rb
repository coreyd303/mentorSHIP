require "rails_helper"

RSpec.describe StudentsController, type: :controller do
  let(:student) { Student.create(name:      "Harry Potter",
                                 bio:       "Wizard.",
                                 cohort:    "1406",
                                 mod_id:    1,
                                 posse_id:  3) }

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
        @attributes = { name:     "George Brett",
                        bio:      "Words about George Brett.",
                        cohort:   "1406",
                        mod_id:   1,
                        posse_id: 3 }

        expect { post :create, student: @attributes }.to change(Student, :count).by 1
      end

      it "saves the student in the database wihtout a bio" do
        @attributes = { name:     "George Brett",
                        bio:      nil,
                        cohort:   "1406",
                        mod_id:   1,
                        posse_id: 3 }

        expect { post :create,
                 student: @attributes}.to change(Student, :count).by 1
      end

      it "redirects to the new student's profile" do
        @attributes = { name:     "George Brett",
                        bio:      "Words about George Brett.",
                        cohort:   "1406",
                        mod_id:   1,
                        posse_id: 3 }
        post :create, student: @attributes

        expect(response).to redirect_to Student.last
      end
    end
  end

  describe "update" do
    describe "with invalid params" do
      it "does not save the new student without a name" do
        @invalid_attributes = { name:     nil,
                                bio:      "Words about Harry Potter.",
                                cohort:   "1406",
                                mod_id:   1,
                                posse_id: 3 }

        expect { put :update, id: student.id,
                  student: @invalid_attributes}.not_to change(student, :name)
      end

      it "does not save the new student without a cohort" do
        @invalid_attributes = { name:     "Harry Potter",
                                bio:      "Words about Harry Potter.",
                                cohort:   nil,
                                mod_id:   1,
                                posse_id: 3 }

        expect { put :update, id: student.id,
                 student: @invalid_attributes}.not_to change(student, :cohort)
      end

      it "does not save the new student without a module" do
        @invalid_attributes = { name:     "Harry Potter",
                                bio:      "Words about Harry Potter.",
                                cohort:   "1406",
                                mod_id:   nil,
                                posse_id: 3 }

        expect { put :update, id: student.id,
                 student: @invalid_attributes}.not_to change(student, :mod_id)
      end

      it "does not save the new student without a module" do
        @invalid_attributes = { name:     "Harry Potter",
                                bio:      "Words about Harry Potter.",
                                cohort:   "1406",
                                mod_id:   1,
                                posse_id: nil }

          expect { put :update, id: student.id,
            student: @invalid_attributes}.not_to change(student, :posse_id)
      end

      it "re-renders the new template if student is not saved" do
        @invalid_attributes = { name:   "Harry Potter",
                                bio:    "Words about Harry Potter.",
                                cohort: nil,
                                mod_id: 1 }
        put :update, id: student.id, student: @invalid_attributes

        expect(response).to render_template('edit')
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
