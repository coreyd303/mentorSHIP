require 'rails_helper'

RSpec.describe Snippet, :type => :model do
  let(:comment) { Comment.new(user_id: 1,
                               body: 'sample comment text',
                               snippet_id: 3) }

  it 'is valid' do
    expect(comment).to be_valid
  end

  it 'is invalid without a body' do
    comment.body = nil

    expect(comment).not_to be_valid
  end
end
