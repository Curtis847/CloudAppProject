class Patient < ActiveRecord::Base
    def self.search(search)
        where("lastname ILIKE ?", "#{search}%")
    end
end
