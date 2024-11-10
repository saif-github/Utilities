chmod 0777 {filename}
chmod u+x {filename}
chmod u-x {filename}
chmod ugo=rx {filename}

Example Permissions,

-rwxrwxrwx                  0777 (read , write , execute for owner , group and world)
-rwxr-----                  0740 (read , write , execute for owner , group)
-r-xr-xr-x                  0555 (read , execute for owner , group and world)

