module Yaga
  class Engine < ::Rails::Engine
    isolate_namespace Yaga
    config.to_prepare do
      ActionController::Base.send(:include, YagaHelper)
      ActionView::Base.send(:include, YagaHelper)
    end
  end
end

