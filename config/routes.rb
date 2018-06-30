Rails.application.routes.draw do

  resources :codes
  resources :attendances
  resources :students
    root  "qrcode#qrcode_encode"

  post "/page", to: "qrcode#qrcode_encode"
 end
