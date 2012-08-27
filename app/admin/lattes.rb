ActiveAdmin.register Latte do
  index do
    column :id do |latte|
      link_to latte.id, admin_latte_path(latte)
    end
    column :location do |latte|
      link_to latte.location, admin_latte_path(latte)
    end
    column :photo do |latte|
      link_to admin_latte_path(latte) do
        image_tag latte.photo.thumb_retina.url
      end
    end
    column :comments
    column :submitted_by
  end

  show do |latte|
    attributes_table do
      row :id
      row :location
      row :photo do
        image_tag latte.photo.url
      end
      row :comments
      row :submitted_by
    end
  end
end
