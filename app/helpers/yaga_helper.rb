module YagaHelper

  def format_event(event)
    data = "'#{event[:category]}', '#{event[:action]}'"
    data += ", '#{event[:label]}'" if event[:label]
    data += ", #{event[:value]}" if event[:value]
    data += ", #{event[:non_interaction]}" if event[:non_interaction]
    data
  end

  def format_custom_var(var)
    data = "#{var[:index]}, '#{var[:name]}', '#{var[:value]}'"
    data += ", #{var[:opt_scope]}" if var[:opt_scope]
    data
  end

  def yaga_snippet
    if Yaga::CONFIG.try :[], 'google'
      render 'layouts/yaga/google'
    end
  end

  #protected

    def queue_event(event)
      session[:yaga_events] ||= Array.new
      session[:yaga_events] << event
    end

    def queue_custom_var(var)
      session[:yaga_custom_vars] ||= Array.new
      session[:yaga_custom_vars] << var
    end
end
