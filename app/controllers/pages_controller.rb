class PagesController < ApplicationController
def index

end

def home
  @job = Job.all
end
end
