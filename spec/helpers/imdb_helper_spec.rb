# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ImdbHelper, type: :helper do
  describe '#imdb_image_tag' do
    context 'when path is present' do
      it 'responds with an imdb image' do
        expect(helper.imdb_image_tag('')).to include('/packs-test/media/images/placeholder_poster-')
      end
    end

    context 'when path is not present' do
      it 'responds with placeholder image' do
        expect(helper.imdb_image_tag('tests')).to include('/images/w500/tests')
      end
    end
  end
end
