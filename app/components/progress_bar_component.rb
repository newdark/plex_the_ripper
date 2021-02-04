# frozen_string_literal: true

class ProgressBarComponent < ViewComponent::Base
  extend Dry::Initializer
  option :label
  option :completed, Types::Integer, default: -> { 0 }
  option :status, default: -> { 'info' }
  option :message, optional: true

  def dom_id
    "#{label.downcase}-progress-bar"
  end
end
