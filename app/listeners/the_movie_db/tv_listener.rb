# frozen_string_literal: true

module TheMovieDb
  class TvListener
    PERMITTED_PARAMS = %i[
      name
      original_name
      year
      poster_path
      backdrop_path
      overview
    ].freeze
    SEASON_PERMITTED_PARAMS = %i[name overview poster_path season_number air_date].freeze

    def tv_saving(tv) # rubocop:disable Naming/MethodParameterName
      return if tv.the_movie_db_id.nil?

      db_tv = TheMovieDb::Tv.new(tv.the_movie_db_id).body
      tv.attributes = tv_params(db_tv).merge(synced_on: Time.current)
      build_seasons(tv, db_tv)
    end

    private

    def tv_params(db_tv)
      db_tv.to_h.slice(*PERMITTED_PARAMS).tap do |params|
        params[:episode_distribution_runtime] = db_tv.episode_run_time.sort
        params[:episode_first_air_date] = db_tv.first_air_date
      end
    end

    def build_seasons(tv, db_tv) # rubocop:disable Naming/MethodParameterName
      db_tv.seasons.each do |season|
        tv.seasons.build(season.to_h.slice(*SEASON_PERMITTED_PARAMS)).tap do |tv_season|
          tv_season.the_movie_db_id = season.id
        end
      end
    end
  end
end