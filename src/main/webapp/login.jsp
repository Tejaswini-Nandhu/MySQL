<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login Page</title>
  <!-- <link rel="stylesheet" href="styles.css"> -->
  <style>
:root {
  --primary-color: #7c3aed;
  --accent-color: #a78bfa;
  --background-color: #f3e8ff;
  --text-color: #2d1a4a;
  --button-radius: 2rem;
  --button-shadow: 0 2px 8px rgba(124,58,237,0.08);
}

body {
  margin: 0;
  padding: 0;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background: linear-gradient(135deg, #f3e8ff 0%, #ede9fe 100%);
  color: var(--text-color);
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

.login-container {
  background: rgba(255,255,255,0.92);
  box-shadow: 0 8px 32px rgba(124,58,237,0.08);
  border-radius: 2rem;
  padding: 2.5rem 2rem;
  max-width: 500px;
  width: 100%;
  margin: 2rem auto;
  text-align: center;
  box-sizing: border-box;;
}

h2 {
  font-size: 2.2rem;
  font-weight: 800;
  letter-spacing: 2px;
  color: var(--primary-color);
  text-shadow: 0 2px 8px #ede9fe;
  margin-bottom: 2rem;
}

label {
  text-align: left;
  font-weight: 600;
  color: var(--primary-color);
  margin-bottom: 0.2rem;
  margin-top: 0.7rem;
  display: block;
}

input[type="text"],
input[type="password"],
select {
  width: 100%;
  max-width:100%;
  box-sizing:border-box;
  padding: 0.7rem 1rem;
  border: 1px solid #d1c4e9;
  border-radius: 1.2rem;
  font-size: 1rem;
  font-family: inherit;
  background: #f8f5ff;
  transition: border 0.2s;
  outline: none;
  margin-top: 0.3rem;
}

input:focus,
select:focus {
  border: 1.5px solid var(--primary-color);
  background: #f3e8ff;
}

button[type="submit"] {
  background: linear-gradient(90deg, var(--primary-color) 60%, var(--accent-color) 100%);
  color: #fff;
  border: none;
  padding: 0.85rem 2.2rem;
  font-size: 1.08rem;
  font-weight: 600;
  border-radius: var(--button-radius);
  box-shadow: var(--button-shadow);
  cursor: pointer;
  transition: transform 0.13s, box-shadow 0.13s, background 0.2s;
  letter-spacing: 0.5px;
  outline: none;
  margin-top: 1.5rem;
  width: 100%;
}

button[type="submit"]:hover,
button[type="submit"]:focus {
  background: linear-gradient(90deg, var(--accent-color) 10%, var(--primary-color) 90%);
  transform: translateY(-2px) scale(1.04);
  box-shadow: 0 6px 18px rgba(124,58,237,0.13);
}

.error-msg {
  color: #d32f2f;
  font-weight: 600;
  margin-top: 1rem;
  min-height: 1.2em;
  text-align: left;
  line-height: 1.3;
}

@media (max-width: 600px) {
  .login-container {
    padding: 1.2rem 0.5rem;
    border-radius: 1rem;
    margin: 1.2rem auto;
    max-width: 98vw;
  }
  h2 {
    font-size: 1.5rem;
  }
  button[type="submit"] {
    font-size: 1rem;
    padding: 0.9rem 0;
  }
}
</style>
</head>
<body>
  <div class="login-container">
    <h2>Login</h2>
    <form id="loginForm">
    <!-- userId -->
      <label for="userId">User ID:</label>
      <input type="text" id="userId" name="userId" required minlength="5" maxlength="20">
	<!-- password -->
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required maxlength="30">
	<!-- role -->
      <label for="role">Select Role:</label>
      <select id="role" name="role" required>
        <option value="">--Select--</option>
        <option value="customer">Customer</option>
        <option value="officer">Officer</option>
      </select>

      <div id="errorMsg" class="error-msg"></div>

      <button type="submit">Login</button>
    </form>
  </div>
<!-- <script>document.getElementById('loginForm').addEventListener('submit', function (e) {
  e.preventDefault();

  const userId = document.getElementById('userId').value.trim();
  const password = document.getElementById('password').value.trim();
  const role = document.getElementById('role').value;
  const errorMsg = document.getElementById('errorMsg');

  errorMsg.textContent = '';

  if (!role) {
    errorMsg.textContent = "Please select a role.";
    return;
  }

  if (userId.length < 5 || userId.length > 20) {
    errorMsg.textContent = "User ID must be between 5 and 20 characters.";
    return;
  }

  const hasUpper = /[A-Z]/.test(password);
  const hasLower = /[a-z]/.test(password);
  const hasSpecial = /[!@#$%^&*(),.?":{}|<>]/.test(password);

  if (password.length > 30 || !hasUpper || !hasLower || !hasSpecial) {
    errorMsg.textContent = "Password must be max 30 chars and include upper, lower, and special characters.";
    return;
  }

  // Save user info and redirect to role-specific dashboard
  localStorage.setItem('username', userId);
  localStorage.setItem('role', role);

  if (role === 'customer') {
    window.location.href = "customer-home.html";
  } else if (role === 'officer') {
    window.location.href = "officer-home.html";
  }
});
</script> -->
  
</body>
</html>
