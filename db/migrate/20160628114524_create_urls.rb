class CreateUrls < ActiveRecord::Migration
	def change
		create_table :url do |t|
			t.string :long_url
			t.string :short_url
		end
	end
end
