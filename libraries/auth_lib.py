def login_via_api(username, password):
    """Simulate API login and return status code."""
    # Mock database containing valid user credentials
    users = {"max.muster": "Geheim123!", "locked.user": "Geheim123!"}

    # Return 403 for locked user accounts
    if username == "locked.user":
        return "403"

    # Verify username and password match
    if username in users and users[username] == password:
        return "200"

    # Return 401 for invalid credentials
    return "401"
