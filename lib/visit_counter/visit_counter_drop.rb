


module MobileDetection
  class MobileDetectionDrop < ::Liquid::Drop

    # TODO: make this forbidden
    def initialize(source)
      @source = source
    end

    def config_value
      @source.config['my_plugin_config']
    end

    def is_mobile_device?
      if self.source
        self.source.is_mobile_device?
      else
        false
      end
    end

    def mobile_type
      types_to_look_for = ["android", "ipad", "iphone", "blackberry", "windows phone", "iemobile", "webos", "nokia", "kindle"]
      types_to_look_for.each do |type|
        if is_device?(type)
          return type
        end
      end
      return "none"
    end

    def is_android?
      is_device?('android')
    end

    def is_iphone?
      is_device?('iphone')
    end

    def is_blackberry?
      is_device?('blackberry')
    end

    def is_ipad?
      is_device?('ipad')
    end

    def is_ios?
      is_device?('ipad')  || is_device?('iphone')
    end

    protected

    attr_reader :source

    def is_device?(deviceString)
      if self.source
        self.source.is_device?(deviceString)
      else
        false
      end
    end

  end
end
