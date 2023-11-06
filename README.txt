tpv - Tiny Password Vault
See LICENSE file for copyright and licensing information.

Provides a menu for accessing passwords from an encrypted file.

Credentials are:
    -encrypted/decrypted using gpg
    -selected from using dmenu
    -copied to the clipboard with xclip

Install:
    # Get all dependencies and copy tpv to /usr/bin
    make install

Add a password:
    # Opens menu for adding a new section to a password file:
    # (will create 'filename' if it does not yet exist)
    tpv -a -f filename

Get a password:
    # Opens menu for copying the a desired password:
    tpv -g -f filename


Format of the encrypted file:
    Each section must start with 'for: '

    for: name_of_website
    username username_for_website
    password password_for_website

    for: <section name>
    <field name> <value name>
    ...
    <field name> <value name>


To add/edit many passwords quickly:
    # You can decrypt the whole thing:
    tpv -d -f filename

    # Edit the file with a text editor or your choice:
    $EDITOR filename

    # Encrypt the file again:
    tpv -c -f filename

