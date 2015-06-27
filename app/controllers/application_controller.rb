class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin!
    redirect_to root_path unless current_user.try(:is_admin?)
  end

  def authenticate_blogger
    current_user.try(:blogs?) || false
  end

  # The sign out URL to leave the admin dashboard
  #
  # Returns a String with a URL path that your application must recognised with a DELETE HTTP request
  def blogit_admin_sign_out_url
    binding.pry
    user_session_path(current_user)
  end

  def current_blogger
    current_user.try(:blog_posts) && current_user
  end
end
