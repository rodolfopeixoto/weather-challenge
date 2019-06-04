# frozen_string_literal: true

module DashboardHelper
  def navegation_link_for_current_user
    if current_user
      capture do
        list_link
      end
    end
  end

  def list_link
    concat(content_tag(:li) do
      link_to 'Edit Profile', edit_user_registration_path
    end)
    concat(content_tag(:li) do
      link_to '( + ) Cidades Favoritas', new_favorite_city_path, remote: true, data: {toggle: "modal", target: "#modal-form"}
    end)
    concat(content_tag(:li) do
      link_to 'Logout', destroy_user_session_path, method: :delete
    end)
  end
end
