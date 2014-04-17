class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #http://localhost:3000/test?test_param=this%20Is%20a%20test%20param
  def test
    render plain: params[:test_param].inspect
  end

  #http://localhost:3000/test2?test_param=this%20Is%20a%20test%20param
  def test2
    render inline: params[:test_param].inspect
  end
end
