# frozen_string_literal: true

class Config
  class Plex < Config
    settings_defaults(movie_path: nil, video_path: nil, remote: false, remote_host: nil)

    def settings_invalid?
      return false if settings.remote && settings.remote_host.present?

      settings.movie_path.blank? || settings.video_path.blank?
    end
  end
end
