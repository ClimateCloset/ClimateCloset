

class Location < ActiveRecord::Base
	#[final take-home] specifying attribute I want to be geocoded:  address
	geocoded_by :address
	#[final take-home] specifying when do to the geocoding.  
	#Geocoding starts after validation.  This will send 
	#a request an external Google Maps API 
	after_validation :geocode, :if => :address_changed?
end
