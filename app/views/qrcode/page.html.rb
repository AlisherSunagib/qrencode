<!DOCTYPE html>
<html>
  <head>
    <title>Qrencode</title>
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>

    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>
    <style type="text/css">
      table {
  border-width: 0;
  border-style: none;
  border-color: #0000ff;
  border-collapse: collapse;
}

td {
  border-left: solid 10px #000;
  padding: 0; 
  margin: 0; 
  width: 0px; 
  height: 10px; 
}

td.black { border-color: #000; }
td.white { border-color: #fff; }
    </style>
  <%= raw @qr.as_html %>
  </body>
</html>
