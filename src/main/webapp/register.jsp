<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Customer Registration</title>
  
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
  max-width: 700px;
  width: 100%;
  margin: 2rem auto;
  text-align: center;
}

h2 {
  font-size: 2.2rem;
  font-weight: 800;
  letter-spacing: 2px;
  color: var(--primary-color);
  text-shadow: 0 2px 8px #ede9fe;
  margin-bottom: 2rem;
}

.form-columns {
  display: flex;
  gap: 2rem;
  justify-content: center;
  margin-bottom: 1rem;
}

.form-col {
  flex: 1 1 0;
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

label {
  text-align: left;
  font-weight: 600;
  color: var(--primary-color);
  margin-bottom: 0.2rem;
  margin-top: 0.5rem;
}

input[type="text"],
input[type="email"],
input[type="password"],
textarea,
select {
  padding: 0.7rem 1rem;
  border: 1px solid #d1c4e9;
  border-radius: 1.2rem;
  font-size: 1rem;
  font-family: inherit;
  background: #f8f5ff;
  transition: border 0.2s;
  outline: none;
}

input:focus,
textarea:focus,
select:focus {
  border: 1.5px solid var(--primary-color);
  background: #f3e8ff;
}

.mobile-row {
  display: flex;
  gap: 10px;
}

.form-buttons {
  display: flex;
  gap: 1.5rem;
  justify-content: center;
  margin-top: 1.5rem;
}

button[type="submit"],
button[type="reset"] {
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
}

button[type="reset"] {
  background: linear-gradient(90deg, #ede9fe 60%, #a78bfa 100%);
  color: var(--primary-color);
}

button[type="submit"]:hover,
button[type="submit"]:focus,
button[type="reset"]:hover,
button[type="reset"]:focus {
  background: linear-gradient(90deg, var(--accent-color) 10%, var(--primary-color) 90%);
  transform: translateY(-2px) scale(1.04);
  box-shadow: 0 6px 18px rgba(124,58,237,0.13);
  color: #fff;
}

.error-msg {
  color: #d32f2f;
  font-weight: 600;
  margin-top: 1rem;
  min-height: 1.2em;
}

@media (max-width: 800px) {
  .login-container {
    padding: 1.2rem 0.5rem;
    border-radius: 1rem;
    margin: 1.2rem auto;
    max-width: 98vw;
  }
  .form-columns {
    flex-direction: column;
    gap: 0.5rem;
  }
  .form-buttons {
    flex-direction: column;
    gap: 0.5rem;
  }
  h2 {
    font-size: 1.5rem;
  }
  button[type="submit"],
  button[type="reset"] {
    width: 100%;
    font-size: 1rem;
    padding: 0.9rem 0;
   }
}
</style>
   
</head>
<body>
 <div class="login-container">
  <h2>Customer Registration</h2>
  <form id="registrationForm" action="Register" method="post">
    <div class="form-columns">
      <!-- Left Column -->
      <div class="form-col">
        <label for="name">Customer Name:</label>
        <input type="text" id="name" name="name" maxlength="50" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="countryCode">Mobile Number:</label>
        <div class="mobile-row">
          <select id="countryCode" name="countryCode" required>
            <option value="+91">+91 (IN)</option>
            <option value="+1">+1 (US)</option>
            <option value="+44">+44 (UK)</option>
          </select>
          <input type="text" id="mobile" name="mobile" maxlength="10" pattern="\d{10}" placeholder="10-digit number" required>
        </div>

        <label for="address">Address:</label>
        <textarea id="address" name="address" rows="3" required></textarea>
      </div>
      <!-- Right Column -->
      <div class="form-col">
        <label for="userId">User ID:</label>
        <input type="text" id="userId" name="userId" minlength="5" maxlength="20" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" maxlength="30" required>

        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" maxlength="30" required>

        <label for="preferences">Preferences (delivery, notifications, etc.):</label>
        <textarea id="preferences" name="preferences" rows="2"></textarea>
      </div>
    </div>
    <!-- Buttons -->
    <div class="form-buttons">
      <button type="submit">Register</button>
      <button type="reset" style="margin-top: 10px;">Reset</button>
    </div>
    <div id="errorMsg" class="error-msg"></div>
  </form>
</div>
<!-- <script>
    document.getElementById('registrationForm').addEventListener('submit', function (e) {
  e.preventDefault();

  const name = document.getElementById('name').value.trim();
  const email = document.getElementById('email').value.trim();
  const countryCode = document.getElementById('countryCode').value;
  const mobile = document.getElementById('mobile').value.trim();
  const address = document.getElementById('address').value.trim();
  const userId = document.getElementById('userId').value.trim();
  const password = document.getElementById('password').value.trim();
  const confirmPassword = document.getElementById('confirmPassword').value.trim();
  const preferences = document.getElementById('preferences').value.trim();
  const errorMsg = document.getElementById('errorMsg');

  errorMsg.textContent = '';

  // Validate mobile
  if (!/^\d{10}$/.test(mobile)) {
    errorMsg.textContent = "Please enter a valid 10-digit mobile number.";
    return;
  }

  // Validate passwords match
  if (password !== confirmPassword) {
    errorMsg.textContent = "Passwords do not match.";
    return;
  }

  // All valid, create random username and redirect


});

  </script> -->
  
</body>
</html>
