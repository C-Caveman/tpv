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


Format of the encrypted file: (each section must start with 'loc: ')

    loc: name_of_website
    usr: username_for_website
    pwd: password_for_website

    loc: name_of_another_website
    pwd: another_website_password


If you want to add lots of passwords to an encrypted file:
    # You can decrypt the whole thing:
    gpg -d my_passwords > tmp && mv tmp my_passwords

    # Add to the file with a text editor or your choice:
    $EDITOR my_passwords.txt

    # Encrypt the file again:
    gpg -c my_passwords && mv my_passwords.gpg my_passwords

