ActiveAdmin.register Article do
  form do |f|
    f.inputs "New blog article" do
      f.input :title
      f.input :body
      f.has_many :tags do |t|
        t.inputs :tags do
          t.select :name, collection => Tag.all
        end        
      end
    end

  end

end
