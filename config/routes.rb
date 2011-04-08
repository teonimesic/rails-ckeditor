Rails.application.routes.draw do
  namespace :ckeditor do
    resources :pictures, :only => [:index, :create, :destroy]
    resources :attachment_files, :only => [:index, :create, :destroy]

    match "/ckeditor/attachments/file" => "ckeditor/attachment_files#create"
    match "/ckeditor/attachments/image" => "ckeditor/pictures#create"
  end
end
