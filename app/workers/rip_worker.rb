# frozen_string_literal: true

class RipWorker < ApplicationWorker
  option :disk_title_ids, Types::Array.of(Types::Integer)
  attr_reader :progress_listener

  def call
    disk_titles.each do |title|
      create_mkv(title) unless tmp_mkv_file_exists?(title)
      upload_video(title)
    end
  end

  private

  def tmp_mkv_file_exists?(title)
    File.exist?(title.video.tmp_plex_path)
  end

  def create_mkv(title)
    @progress_listener = MkvProgressListener.new
    CreateMkvService.new(disk_title: title, progress_listener: progress_listener).call
  end

  def upload_video(title)
    @progress_listener = UploadProgressListener.new
    Ftp::UploadMkvService.new(disk_title: title, progress_listener: progress_listener).call
  end

  def disk_titles
    @disk_titles ||= DiskTitle.where(id: disk_title_ids)
  end
end
