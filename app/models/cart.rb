class Cart < ActiveRecord::Base
    attr_accessor :total

    def self.add(cookie, params)
    	if cookie != ""
	   		cart = JSON.parse(cookie).to_h
	   	else
	   		cart = {
	   			"products" => [],
	   			"quantity" => [],
	   			"subtotal" => 0
	   		}
	   	end
   		# cart["products"]
   		# cart["quantity"]
   		cart["subtotal"] = cart["subtotal"].to_f + params.price
   		cart.to_json.to_s
    end
end
