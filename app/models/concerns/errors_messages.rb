module ErrorsMessages

  ERROR_RESPONSE_ACTIONS = %[authentication_error].freeze

  def authentication_error
    respond_to do |format|
      format.html do
        flash[:notice] = "test"
        session[:user_return_to] = request.fullpath
        redirect_to root_path
      end
      # 401 Unauthorized response
      format.any(:json, :xml){ request_http_basic_authentication 'EZeat888' }
    end
  end
end