class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_member
    @current_member ||= Member.find(session[:member_id]) if session[:member_id]
  end
  def signed_in?
    !!current_member
  end

  helper_method :current_member, :signed_in?

  def current_member=(member)
    @current_member = member
    session[:member_id] = member.nil? ? member : member.id
  end

end
