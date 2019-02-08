class TVShow < Model
  columns(title: String, seasons: Array, video: Videos)
  validate_presence(:title)
  validate_presence(:video)

  def add_season(season_number)
    season = find_season(season_number)
    season || seasons.push(
      Season.new(number: season_number, tv_show: self)
    ).last
  end

  def find_season(season_number)
    seasons.find { |s| s.number == season_number }
  end
end
