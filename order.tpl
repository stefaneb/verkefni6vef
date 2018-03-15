<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Þín pöntun...</title>
</head>
<body>
    <h2>Nafn: {{fullname}}</h2>
    <h2>Stærð: {{pizzasize}}"</h2>
    <h2>Álegg:</h2>
    <%
    alegg = [{"val":skinka, "nafn":"Skinka"},
            {"val":pepperoni, "nafn":"Pepperoni"},
            {"val":ananas, "nafn":"Ananas"}]
    %>
    %for x in alegg:
    %   if x ["val"] =="on":
    <h3><ul><li>{{x["nafn"]}}</li></ul></h3>
    %   end
    %end
</body>
</html>