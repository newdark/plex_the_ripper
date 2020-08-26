# frozen_string_literal: true

module ImdbHelper
  def imdb_image_tag(path, width: 500, klass: 'card-img-top')
    image_tag "https://image.tmdb.org/t/p/w#{width}/#{path}", class: klass
  end
end