class BooksController < ActionController::Base 
  def unreleased 
    if request.post? 
      if params[:id] 
        # since an ID was specified, this is an update 
      else 
        # no specified ID means this is a creation request 
      end 
    end 

    if request.get? 
      # render a representation of the resource 
    end 

    if request.delete? 
      # delete the resource 
    end 
  end 
end 
