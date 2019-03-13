# frozen_string_literal: true

class AskForFilePathBuilder
  class << self
    def perform
      file_path_builder = AskForFilePathBuilder.new
      file_path_builder.ask_for_media_directory
      Logger.info("Using #{Config.configuration.media_directory_path} to store videos")
    end

    def path
      path = if Config.configuration.type == :tv
               [
                 Config.configuration.media_directory_path,
                 Config.configuration.tv_shows_directory_name,
                 Config.configuration.video_name,
                 Config.configuration.tv_season_to_word,
                 Config.configuration.disc_number_to_word
               ]
             else
               [
                 Config.configuration.media_directory_path,
                 Config.configuration.movies_directory_name,
                 Config.configuration.video_name
               ]
             end
      File.join(path)
    end
  end

  def ask_for_media_directory
    current_path = Config.configuration.media_directory_path
    until media_directory_path_exist?
      Config.configuration.media_directory_path = nil
      Config.configuration.media_directory_path = Shell.ask_value_required(
        "Could not find #{current_path} please use a different folder/directory: ",
        type: String, default: current_path
      )
      current_path = Config.configuration.media_directory_path
    end
  end

  def media_directory_path_exist?
    File.exist?(Config.configuration.media_directory_path)
  end
end
