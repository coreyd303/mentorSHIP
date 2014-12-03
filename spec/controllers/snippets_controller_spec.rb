require 'rails_helper'

RSpec.describe SnippetsController, type: :controller do

  let(:student) { Student.create(name:      "Harry Potter",
                                 bio:       "Wizard.",
                                 cohort:    "1406",
                                 mod_id:    1,
                                 posse_id:  3) }

  describe 'add snippets' do
    it 'visits page to add code snippet' do
      get :new, id: student

      expect(response).to render_template('new')
    end
  end
end
