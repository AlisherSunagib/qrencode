Rails.application.routes.draw do

    root  "qrcode#qrcode_encode"

  post "/page", to: "qrcode#qrcode_encode"
 end
