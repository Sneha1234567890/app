class Friend < ActiveRecord::Base
    def self.to_csv
	    attributes = %w{id email name}

	    CSV.generate(headers: true) do |csv|
	      csv << attributes

	      all.each do |friend|
	        csv << attributes.map{ |attr| friend.send(attr) }
	      end
	    end
	  end

  def name
    "#{first_name} - #{last_name}"
  end
end
