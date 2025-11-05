# User & Group Management with Access Control

**Project Title:** User & Group Management with Access Control

**Objective:** Manage users, groups, and permissions

## Commands Used

- `useradd` - Add users
- `userdel` - Delete users
- `groupadd` - Add groups
- `groupdel` - Delete groups
- `usermod` - Modify users
- `gpasswd` - Manage group members
- `chmod` - Change file permissions
- `chown` - Change file owner
- `chgrp` - Change file group
- `setfacl` - Set access control lists
- `getfacl` - View access control lists

## How to Run

```bash
chmod +x commands.sh
sudo ./commands.sh
```

## Tasks Covered

1. **Add/Delete Users**
   - Create users with `useradd`
   - Delete users with `userdel -r`
   - Set passwords with `chpasswd`

2. **Add/Delete Groups**
   - Create groups with `groupadd`
   - Add users to groups with `usermod -a -G`
   - Remove users from groups with `gpasswd -d`
   - Delete groups with `groupdel`

3. **Modify Permissions (chmod)**
   - Add permissions: `chmod u+x`
   - Remove permissions: `chmod o-w`
   - Numeric method: `chmod 755`

4. **Change Ownership (chown/chgrp)**
   - Change owner: `chown username file`
   - Change group: `chgrp groupname file`
   - Change both: `chown user:group file`

5. **Access Control Lists (setfacl)**
   - Grant user permission: `setfacl -m u:username:r`
   - Grant group permission: `setfacl -m g:groupname:rx`
   - View ACL: `getfacl file`
   - Remove ACL: `setfacl -x u:username file`
