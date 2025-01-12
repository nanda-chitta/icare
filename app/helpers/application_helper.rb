# frozen_string_literal: true

module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = 'ICARE'
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def verify_css(type)
    return 'alert-success' if type.eql?('notice')
    return 'alert-warning' if type.eql?('warning')
    return 'alert-danger' if type.eql?('alert')

    'alert-primary'
  end

  def verify_icon(type)
    return 'bi-check-circle-fill' if type.eql?('notice')
    return 'bi-exclamation-triangle-fill' if type.eql?('warning') || type.eql?('alert')

    'bi-info-circle-fill'
  end

  def signed_in_user
    return if signed_in?

    store_location
    redirect_to new_user_session_path, notice: 'Please sign in.'
  end

  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
end
