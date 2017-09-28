module Blog
  class AuthorsController < BlogController
    # GET /posts
    # GET /posts.json
    def about
      @author = User.last
    end
    
    def portfolio
      @portfolios = User.last.portfolios
    end
  end
end
