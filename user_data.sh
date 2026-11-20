#!/bin/bash
set -eux

# Install Apache web server
dnf install -y httpd

# Start and enable Apache
systemctl enable --now httpd

# Create HTML webpage
cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Accenture Project 1</title>
</head>
<body>
    <h1>Welcome to My AWS Web Server!</h1>
    <h2>Accenture DevOps Capstone Project</h2>
    <p>Deployed using Terraform on AWS EC2.</p>
</body>
</html>
EOF
