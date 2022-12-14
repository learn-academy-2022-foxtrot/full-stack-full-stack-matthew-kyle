class BlogController < ApplicationController

    def index
        @blogs = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.create(blog_params)
        if @blog.valid?
            redirect_to blogs_path
        end
    end
    
    def destroy
        @blog = Blog.find(params[:id])
        if @blog.destroy
            redirect_to blogs_path(@blog)
        end
    end
    
    def edit
        @blog = Blog.find(params[:id])
    end
    
    #keyword that will prohibit methods from being called outside the scope of this class
    private
    #strong params - data protections inside a request
    def blog_params
        params.require(:blog).permit(:title, :content)
    end
end


