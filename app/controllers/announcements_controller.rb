class AnnouncementsController < ApplicationController
    def index
        anns = Announcement.all 
        render json: anns, include: :teacher
    end

    def create
        ann = Announcement.create(ann_params)
        render json: ann, include: :teacher
    end

    private

    def ann_params 
        params.require(:announcement).permit(:content, :teacher_id)
    end
end
