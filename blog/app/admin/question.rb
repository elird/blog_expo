ActiveAdmin.register Question do

	 form do |f|
      f.inputs "pregutas" do 
        f.input :titulo
       f.input :estado
       
      end
      
      f.has_many :answer_question do |item|
        item.input :answer_id, :as => :select, collection: Answer.all 
      end

      f.actions
    end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params do
   permitted = [:titulo, :estado]
	end



end
