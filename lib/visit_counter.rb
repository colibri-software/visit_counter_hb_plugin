
require 'rubygems'
require 'bundler/setup'

require 'mobile-fu'

require 'mobile_detection/mobile_detection_drop'

module MobileDetection
  class MobileDetection

    include Locomotive::Plugin

    # Set up mobile-fu
    include ActionController::MobileFu::InstanceMethods
    before_filter :set_mobile_format

    def to_liquid
      MobileDetectionDrop.new(self)
    end

    def content_type_scope(content_type)
      if content_type.slug == 'things'
        { 'mobile' => self.is_mobile_device? }
      else
        nil
      end
    end

    def config_template_file
      File.join(File.dirname(__FILE__), 'config.haml')
    end

    protected

    # For mobile-fu, pass missing methods to the controller
    def method_missing(meth, *args, &block)
      if self.controller && self.controller.respond_to?(meth)
        self.controller.send(meth, *args, &block)
      else
        super
      end
    end

  end

  LocomotivePlugins.register_plugin(MobileDetection)

end
