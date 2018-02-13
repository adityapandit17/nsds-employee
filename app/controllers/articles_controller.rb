class ArticlesController < InheritedResources::Base
before_action :authenticate_admin_user!, :except => [:index]
  private

    def article_params
      params.require(:article).permit(:title, :description)
    end
end

