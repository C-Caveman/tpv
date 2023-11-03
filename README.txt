tpv - Tiny Password Vault
See LICENSE file for copyright and licensing information.

tpv turns an encrypted text file into a password manager!

1) Make a text file (my_passwords.txt)
2) Format it like this:

    loc: name_of_website
    usr: username_for_website
    pwd: password_for_website

    loc: name_of_another_website
    pwd: another_website_password

3) Encrypt the file:
    gpg -c my_passwords.txt
    # It will prompt you for a password.
4) Delete the unencrypted version.
    rm my_passwords.txt
5) Now you can access the passwords inside with tpv!
    tpv my_passwords.txt.gpg
    # You will get a menu which lets you choose which "loc"
    # to copy the password from.

Requires dmenu and xclip to work.
Here's how you get those on Ubuntu:
    sudo apt install dmenu xclip
