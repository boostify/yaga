require "yaga/engine"
require "yaga/version"

module Yaga
    def queue_event(event)
      session[:events] ||= Array.new
      session[:events] << event
    end

    def queue_custom_var(var)
      session[:custom_vars] ||= Array.new
      session[:custom_vars] << var
    end
end

ActionController::Base.send(:include, Yaga)
