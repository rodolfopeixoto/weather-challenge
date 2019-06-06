# frozen_string_literal: true

module ApplicationHelper
  def header_application
    render '/shared/header' if current_user
  end
end
