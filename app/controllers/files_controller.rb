class FilesController < ApplicationController
  def index
    #@files = Dir["files/*"]
    @files = Dir.entries("#{Dir.pwd}/files/").select {|f| !File.directory? f}
  end

  def show
    @file = params[:name]
    @data = File.read("#{Dir.pwd}/files/#{@file}")
  end

  def new
    @file = ''
  end

  def create
    File.open("files/#{params['name']}", "w+") do |f|
      f.write(params['content'])
    end
    redirect_to file_path(name: params['name'])
  end
end
