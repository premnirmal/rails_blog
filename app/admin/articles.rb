ActiveAdmin.register Article do
  form do |f|
    f.inputs "New blog article" do
      f.input :title
      f.input :body

      f.has_many :tags do |tag_form| # form for tags (many-many, nested attr)
        tag_form.inputs :tags do
          tag_form.input :name
          tag_form.input :_destroy, :as => :boolean
        end        
      end
    end
    f.buttons    
  end

end
