require 'tokyocabinet'

 
module ActiveSupport
  module Cache
    class TokyoCabinetStore < Store

      include TokyoCabinet
      module Response # :nodoc:
        STORED = "STORED\r\n"
        NOT_STORED = "NOT_STORED\r\n"
        EXISTS = "EXISTS\r\n"
        NOT_FOUND = "NOT_FOUND\r\n"
        DELETED = "DELETED\r\n"
      end

			def initializer
				@data = HDB::new
			end

			attr_accessor :db_type
			
			def write(key, value)
			  super
        
			  
			end
			
			def read
			  super
			  
			end
			
			def delete
			  super
			  
			end
			
    end
  end
end