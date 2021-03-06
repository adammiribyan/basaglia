class PagesController < ApplicationController
  VALID_CHARACTERS = "a-zA-Z0-9~!@$%^&*()#`_+-=<>\"{}|[];',?".freeze

  rescue_from ActionView::MissingTemplate do |exception|
    if exception.message =~ %r{Missing template #{content_path}}
      raise ActionController::RoutingError, "No such page: #{params[:id]}"
    else
      raise exception
    end
  end

  def show
    render template: current_page
  end

  def send_feedback
    @feedback = Feedback.new(
      name: params[:feedback][:name],
      phone_or_email: params[:feedback][:phone_or_email],
      message: params[:feedback][:message]
    )

    @feedback.deliver
    redirect_to root_url
  end

  protected

    def current_page
      "#{content_path}#{clean_path}"
    end

    def clean_path
      path = Pathname.new("/#{clean_id}")
      path.cleanpath.to_s[1..-1]
    end

    def content_path
      "pages/"
    end

    def clean_id
      params[:id].tr("^#{VALID_CHARACTERS}", '')
    end
end
