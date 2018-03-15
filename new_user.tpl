<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>New User</title>
</head>
<body>
    <%
        newuser = {'emial':email, 'username':user, 'pwd':password}
        import json
        with open ('users.json','r', encoding='utf-8') as f:
            userdata = json.load(f)
    %>
    %if not any(x['username'] == newuser['username'] for x in userdata['users']):
        %userdata['users'].append(newuser)
        <h3>Takk fyrir skráninguna</h3>
    %else:
        <h3>Notendanafn er nú þegar skráð.</h3>
    %end
%with open('users.json', 'w', encoding='utf-8') as f:
    %json.dump(userdata, f, indent=4)
</body>
</html>