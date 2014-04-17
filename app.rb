require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:///sql_hw.db"

get '/professors' do
	@professors = Professor.all
	erb :"professors/index"
end

get '/professors/new' do
	erb :"professors/new"
end

post '/professors' do
	@professor = Professor.new(params[:professor])
	@professor.save
	if @professor.name =="" 
		redirect :'professors/new'
	else
		redirect :"professors"
	end
end

get '/professors/:id' do
	@professor = Professor.find(params[:id])
	erb :"professors/show"
end

delete '/professors/:id/delete' do
	@professor = Professor.find(params[:id])
	@professor.delete
	redirect :"/main"
end

get '/professors/:id/edit' do
	@professor = Professor.find(params[:id])
	erb :"professors/edit"
end

put '/professors/:id' do
	@professor = Professor.find(params[:id])
	@professor.update_attributes(params[:professor])
	redirect :"/professors"
end

get '/subjects' do
	@subjects = Subject.all
	erb :"subjects/index"
end

get '/subjects/new' do
	erb :"subjects/new"
end

post '/subjects' do
	@subject = Subject.new(params[:subject])
	@subject.save
	if @subject.name =="" 
		redirect :'subjects/new'
	else
		redirect :"subjects"
	end
end

get '/subjects/:id' do
	@subject = Subject.find(params[:id])
	erb :"subjects/show"
end

delete '/subjects/:id/delete' do
	@subject = Subject.find(params[:id])
	@subject.delete
	redirect :"/main"
end

get '/subjects/:id/edit' do
	@subject = Subject.find(params[:id])
	erb :"subjects/edit"
end

put '/subjects/:id' do
	@subject = Subject.find(params[:id])
	@subject.update_attributes(params[:subject])
	redirect :"/subjects"
end

get '/courses' do
	@courses = Course.all
	erb :"courses/index"
end

get '/courses/new' do
	erb :"courses/new"
end

post '/courses' do
	@course = Course.new(params[:course])
	@course.save
	if @course.name =="" 
		redirect :'courses/new'
	else
		redirect :"courses"
	end
end

get '/courses/:id' do
	@course = Course.find(params[:id])
	erb :"courses/show"
end

delete '/courses/:id/delete' do
	@course = Course.find(params[:id])
	@course.delete
	redirect :"/main"
end

get '/courses/:id/edit' do
	@course = Course.find(params[:id])
	erb :"courses/edit"
end

put '/courses/:id' do
	@course = Course.find(params[:id])
	@course.update_attributes(params[:course])
	redirect :"/courses"
end

class Professor <ActiveRecord::Base
end

class Subject <ActiveRecord::Base
end

class Course <ActiveRecord::Base
end