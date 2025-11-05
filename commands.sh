#!/bin/bash

# User & Group Management with Access Control
# Simple Commands Script

echo "========================================"
echo "USER MANAGEMENT COMMANDS"
echo "========================================"
echo ""

# CREATE USERS
echo "1. Create a user"
echo "Command: sudo useradd john"
sudo useradd john

echo "2. Create user with home directory"
echo "Command: sudo useradd -m alice"
sudo useradd -m alice

echo "3. Create user with specific UID"
echo "Command: sudo useradd -m -u 1500 bob"
sudo useradd -m -u 1500 bob

echo "4. Set password"
echo "Command: echo 'john:password123' | sudo chpasswd"
echo 'john:password123' | sudo chpasswd

echo "5. View user"
echo "Command: id john"
id john

echo "6. Delete user"
echo "Command: sudo userdel -r john"
sudo userdel -r john

echo ""
echo "========================================"
echo "GROUP MANAGEMENT COMMANDS"
echo "========================================"
echo ""

# CREATE GROUPS
echo "1. Create a group"
echo "Command: sudo groupadd developers"
sudo groupadd developers

echo "2. Create group with GID"
echo "Command: sudo groupadd -g 2000 designers"
sudo groupadd -g 2000 designers

echo "3. Add user to group"
echo "Command: sudo usermod -a -G developers alice"
sudo usermod -a -G developers alice

echo "4. Add user to multiple groups"
echo "Command: sudo usermod -a -G developers,designers bob"
sudo usermod -a -G developers,designers bob

echo "5. View group members"
echo "Command: getent group developers"
getent group developers

echo "6. View user's groups"
echo "Command: groups alice"
groups alice

echo "7. Remove user from group"
echo "Command: sudo gpasswd -d alice developers"
sudo gpasswd -d alice developers

echo "8. Delete group"
echo "Command: sudo groupdel designers"
sudo groupdel designers

echo ""
echo "========================================"
echo "FILE PERMISSIONS - CHMOD"
echo "========================================"
echo ""

# Create test file
echo "Test file" > testfile.txt

echo "1. View current permissions"
echo "Command: ls -la testfile.txt"
ls -la testfile.txt

echo "2. Add execute permission"
echo "Command: chmod u+x testfile.txt"
chmod u+x testfile.txt
ls -la testfile.txt

echo "3. Remove write permission"
echo "Command: chmod o-w testfile.txt"
chmod o-w testfile.txt
ls -la testfile.txt

echo "4. Set numeric permissions 755"
echo "Command: chmod 755 testfile.txt"
chmod 755 testfile.txt
ls -la testfile.txt

echo "5. Set numeric permissions 644"
echo "Command: chmod 644 testfile.txt"
chmod 644 testfile.txt
ls -la testfile.txt

echo "6. Set numeric permissions 600"
echo "Command: chmod 600 testfile.txt"
chmod 600 testfile.txt
ls -la testfile.txt

echo ""
echo "========================================"
echo "FILE OWNERSHIP - CHOWN"
echo "========================================"
echo ""

echo "1. Change owner"
echo "Command: sudo chown alice testfile.txt"
sudo chown alice testfile.txt
ls -la testfile.txt

echo "2. Change group"
echo "Command: sudo chgrp developers testfile.txt"
sudo chgrp developers testfile.txt
ls -la testfile.txt

echo "3. Change owner and group"
echo "Command: sudo chown bob:developers testfile.txt"
sudo chown bob:developers testfile.txt
ls -la testfile.txt

echo ""
echo "========================================"
echo "ACCESS CONTROL LISTS - SETFACL"
echo "========================================"
echo ""

echo "1. View ACL"
echo "Command: getfacl testfile.txt"
getfacl testfile.txt

echo "2. Grant read permission to user via ACL"
echo "Command: sudo setfacl -m u:alice:r testfile.txt"
sudo setfacl -m u:alice:r testfile.txt
getfacl testfile.txt

echo "3. Grant read+write permission"
echo "Command: sudo setfacl -m u:bob:rw testfile.txt"
sudo setfacl -m u:bob:rw testfile.txt
getfacl testfile.txt

echo "4. Grant permission to group via ACL"
echo "Command: sudo setfacl -m g:developers:rx testfile.txt"
sudo setfacl -m g:developers:rx testfile.txt
getfacl testfile.txt

echo "5. Remove ACL entry"
echo "Command: sudo setfacl -x u:alice testfile.txt"
sudo setfacl -x u:alice testfile.txt
getfacl testfile.txt

echo "6. Remove all ACL"
echo "Command: sudo setfacl -b testfile.txt"
sudo setfacl -b testfile.txt
getfacl testfile.txt

echo ""
echo "========================================"
echo "CLEANUP"
echo "========================================"
echo ""

echo "Deleting test users and groups..."
sudo userdel -r alice 2>/dev/null
sudo userdel -r bob 2>/dev/null
sudo groupdel developers 2>/dev/null
rm -f testfile.txt

echo "Done!"