<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Forgot Password</title>
    <style>
    * {
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
}

body {
    background-color: #ffffff;
    background-repeat: no-repeat;
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 15rem 0;
}

.card {
    backdrop-filter: blur(16px) saturate(180%);
    -webkit-backdrop-filter: blur(16px) saturate(180%);
    background-color: rgba(0, 0, 0, 0.75);
    border-radius: 12px;
    border: 1px solid rgba(255, 255, 255, 0.125);
    display: block;
    flex-direction: column;
    align-items: center;
    padding: 10% 5%;
}

.lock-icon {
    font-size: 3rem;
}

h2 {
    font-size: 1.5rem;
    margin-top: 10px;
    text-transform: uppercase;
}

p {
    font-size: 12px;
}

.passInput {
    margin-top: 15px;
    width: 80%;
    background: transparent;
    border: none;
    border-bottom: 2px solid deepskyblue;
    font-size: 15px;
    color: white;
    outline: none;
}

button {
    margin-top: 15px;
    width: 80%;
    background-color: deepskyblue;
    color: white;
    padding: 10px;
    text-transform: uppercase;
}</style>
</head>

<body>
<form>
    <div class="card" style="text-align:Center">
        <h2>Forgot Password?</h2>
        <p>You can reset your Password here</p>
        <input type="text" class="passInput" placeholder="Email address">
        <button>Send My Password</button>
    </div>
</form>
</body>
</html>