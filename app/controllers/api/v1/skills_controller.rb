module Api
  module V1
    class SkillsController < ApplicationController
      before_action :authenticate_user!
      before_action :set_skill, only: [:destroy]

      def index

        if params[:s]
          @skills = Skill.where('name like ?', "%#{params[:s]}%")
        else
          @skills = Skill.all
        end
        render @skills
      end

      def create
        @skill = Skill.find_by_name(skill_attributes[:name])

        if !@skill
          @skill = Skill.create skill_attributes
        end
        current_user.skills < @skill

        render current_user.skills
      end

      def destroy

      end
    end



    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_attributes
      params.require(:skills).permit(:name, :description)
    end
  end
end
