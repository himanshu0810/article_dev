class SearchController < ApplicationController


	def searchview
	end




	def searchfunction
		puts "yvv"

		@list=Article.find_by_sql("Select * from articles where id in
		 (select article_id from tags where tag like '%#{params[:search]}%' )")


	end




end
