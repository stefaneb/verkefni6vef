<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Verkefni 6</title>
</head>
<body>

<form action="/order" method="GET">

<label>Nafn: </label>
    <input type="text" name="fullname" required>
    <br>
    <label>Netfang: </label>
    <input type="email" pattern="\w+@\w+\.\w+">
    <br>
    <label>Sími: </label>
    <input type="text" maxlength="7" minlength="7" pattern="\d{7}">
    <br>
    <input type="radio" name="pizzasize" value="9"><label>9 tommu - 1000 kr.</label>
    <br>
    <input type="radio" name="pizzasize" value="12"><label>12 tommu - 1500 kr.</label>
    <br>
    <input type="radio" name="pizzasize" value="18"><label>18 tommu - 2000 kr.</label>
    <br>
    <input type="checkbox" name="skinka"><label>Skinka</label>
    <br>
    <input type="checkbox" name="ananas"><label>Ananas</label>
    <br>
    <input type="checkbox" name="pepperoni"><label>Pepperoni</label>
    <input type="submit" value="Panta">
</form>

</body>
</html>