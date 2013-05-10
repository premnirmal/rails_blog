ActiveAdmin.register Article do
  show do
    attributes_table  do
      row :title
      row :body
      row 'Tags' do |art|
        art.tags.map { |t|
          t.name}.join(", ")
      end
    end
  end

  form do |f|
    f.inputs "New blog article" do
      f.input :title
      f.input :body
      f.input :tags, as: :check_boxes
    end
    f.actions
  end

end
