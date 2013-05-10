ActiveAdmin.register Tag do
  show do
    attributes_table do
      row :name
      row 'Articles' do |t|
        t.articles.map {|art|
          art.title}.join(" ##### ")
      end
    end
  end

  form do |f|
    f.inputs "New tag" do
      f.input :name
      f.input :articles, as: :check_boxes
    end
    f.actions
  end


end
