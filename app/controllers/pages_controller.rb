class PagesController < ApplicationController
	skip_before_action :require_login, only: [:apple_app_site_association]

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
