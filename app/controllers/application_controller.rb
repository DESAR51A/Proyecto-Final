class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # Almacena página que debe mostrar devise luego de iniciar sesión
  before_filter :store_current_location, :unless => :devise_controller?

  # Filtro de campos para devise
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # Layout dinámico, asigna layour personalizado para login de empleado, login de clientes, menú de empleados y menú de clientes
  layout :layout_by_resource

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit (:sign_up) { |u| u.permit(:name,:dni,:email,:birth, :phone, :password, :current_password, :password_confirmation) }
    devise_parameter_sanitizer.permit (:account_update) { |u| u.permit(:name,:dni,:email,:birth, :phone, :password, :current_password, :password_confirmation) }
  end
  
  def layout_by_resource
    if devise_controller? 
      if resource_name == :employee
        "employee_login"
      else
        "customer"
      end
    else 
      if request.url.include? "/backend"
        "application"
      else
        "customer"
      end
    end
  end

  def store_current_location

    # Si es el backend almacena para el devise employee, caso contrio web de clientes en el devise de client
    if request.url.include? "/backend"
      store_location_for(:employee, request.url)
    else
      store_location_for(:client, request.url)
    end

  end

end
