class PagesController < ApplicationController

	def apple_app_site_association
		render json: {
			"applinks": {
				"apps": [], "details": [
					{
						"appID": Rails.configuration.appID,
						"paths": ['*']
					}
				]
			}
		}
	end
end
