require "to_param/base"

module ToParam
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer "to_param" do |_|
      ActiveSupport.on_load(:active_record) do
        class << self
          include ToParam::Base
        end
      end
    end
  end
end