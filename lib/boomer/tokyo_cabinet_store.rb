require 'tokyocabinet'

module ActiveSupport
  module Cache
    # A cache store implementation which stores data in Tokyo Cabinet:
    # http://tokyocabinet.sourceforge.net/index.html
    #
    class TokyoCabinetStore < Store

      include TokyoCabinet
      module Response # :nodoc:
        STORED      = "STORED\r\n"
        NOT_STORED  = "NOT_STORED\r\n"
        EXISTS      = "EXISTS\r\n"
        NOT_FOUND   = "NOT_FOUND\r\n"
        DELETED     = "DELETED\r\n"
      end

      attr_accessor :db_type

      def initialize
        @data = BDB.new
      end

      def write
      end

      def read
      end

      def delete
      end

    end
  end
end
