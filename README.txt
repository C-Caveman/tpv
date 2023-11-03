tpv - Tiny Password Vault
See LICENSE file for copyright and licensing information.

tpv provides a menu for accessing passwords from an encrypted file.

Credentials are:
    -encrypted/decrypted using gpg
    -selected from using dmenu
    -copied to the clipboard with xclip

Install:
    # Gets all dependencies and copies tpv to /usr/bin
    make install

Add a password:
    # Creates my_passwords if it doesn't yet exist:
    tpv -a -f my_passwords

Get a password:
    # Opens menu for copying the a desired password:
    tpv -g -f my_passwords


Format of the encrypted file:
    Each section must start with 'for: '
    Each section must end with 'pwd: '

    for: name_of_website
    usr: username_for_website
    pwd: password_for_website

    for: name_of_another_website
    pwd: another_website_password


To add many passwords quickly:
    # You can decrypt the whole thing:
    tpv -d -f filename

    # Add to the file with a text editor or your choice:
    $EDITOR filename

    # Encrypt the file again:
    tpv -c -f filename

