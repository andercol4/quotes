ActiveAdmin.register Quote do
  permit_params :body, :user_id, :source_id

  index do |i|
    i.column :body
    i.column :source
    i.column :user

    i.actions
  end

  form do |f|
    f.inputs 'Quote' do
      # f.source
      f.input :body
      f.input :user
      f.input :source
    end
    f.actions
  end

  show do |s|
    attributes_table do
      # show user and source here
      row 'quote body' do
        s.body
      end
      row 'quote source' do
        s.source
      end
      row 'quote user' do
        s.user.first_name
      end
    end
  end
end
