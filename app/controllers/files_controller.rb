class FilesController < ApplicationController
  def index
    @files = Dir["files/*"]
  end
end
