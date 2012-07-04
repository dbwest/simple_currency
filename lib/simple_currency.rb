require 'simple_currency/currency_convertible'
require 'core_ext/fixnum'
require 'core_ext/float'
class SimpleCurrency
  class << self
    attr_accessor :key
    
    def cache_enabled?
      if @cache_enabled.nil?
        @cache_enabled = true
      end
      
      @cache_enabled
    end
    
    def enable_cache
      @cache_enabled = true
    end
    
    def disable_cache
      @cache_enabled = false
    end
    
    def cache_get(key)
      ret = nil
  
      if @cache.is_a?(Hash)
        ret = @cache[key]
      end
      
      ret
    end
    
    def cache_add(key, value)
      if !@cache.is_a?(Hash)
        @cache = Hash.new
      end
  
      @cache[key] = value
    end
    
    def cache_flush
      @cache = Hash.new
    end
  end
end
