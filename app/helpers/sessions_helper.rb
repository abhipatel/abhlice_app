module SessionsHelper
  def sign_in
    cookies.permanent[:has_access] = true
  end

  def sign_out
    cookies.delete(:has_access)
  end

  def has_access?
    cookies[:has_access]
  end
end
