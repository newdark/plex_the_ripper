# frozen_string_literal: true

# == Schema Information
#
# Table name: movies
#
#  id              :integer          not null, primary key
#  backdrop_path   :string
#  file_path       :string
#  original_title  :string
#  overview        :string
#  poster_path     :string
#  release_date    :date
#  title           :string
#  workflow_state  :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  the_movie_db_id :integer
#
require 'rails_helper'

RSpec.describe Movie, type: :model do
  include_context 'DiskWorkflow'
  include_context 'HasProgress'

  # V
  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:original_title) }
  end
end
