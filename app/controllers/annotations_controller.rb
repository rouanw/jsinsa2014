class AnnotationsController < ApplicationController
	def create
		uri = params[:uri]
		data = {
			:permissions => params[:permissions],
			:ranges => params[:ranges],
			:text => params[:text],
			:uri => uri,
			:user => params[:user],
			:quote => params[:quote]
		}

		annotation = Annotation.create :uri => uri, :data => data.to_json
		render json: data
	end

	def search
		annotations = Annotation.where(["uri = ?", params[:uri]])
		results = {:total => annotations.count}
		rows = Array.new
		annotations.each do |a|
			rows.push JSON.parse(a.data)
		end
		results[:rows] = rows
		render json: results
	end
end
