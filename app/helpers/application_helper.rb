# frozen_string_literal: true

module ApplicationHelper
  def header_application
    render '/shared/header' if current_user
  end

  def flash_class(level)
    case level
      when 'notice' then "alert alert-info"
      when 'success' then "alert alert-success"
      when 'error' then "alert alert-danger"
      when 'alert' then "alert alert-warning"
    end
  end
end
