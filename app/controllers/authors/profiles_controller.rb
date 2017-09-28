module Authors
  class ProfilesController < AuthorController
    before_action :set_profile, only: [:edit, :update]
    def edit
    end

    def update
      current_user.update_attributes(profile_params)
      redirect_to authors_profile_path
    end

    private
    #
    def set_profile
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:user).permit(:birthday, :summary, :phone, :skills => [:name, :percent], portfolios_attributes: [:id, :title, :image, :url, :use_skills, :summary, :_destroy] )
    end
  end
end
