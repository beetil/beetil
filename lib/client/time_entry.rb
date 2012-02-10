module Beetil
  class TimeEntry < Beetil::Base
    # Beetil::Base has a buggy implementation and cannot handle two word classes properly, until that's fixed...
    def self.model_name
      @_model_name = "time_entry"
    end

    def self.table_name
      @_table_name = "time_entries"
    end
  end
end
