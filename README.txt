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
    # (will create '<filename>' if it does not yet exist)
    tpv -a <filename>

Get a password:
    # Opens menu for copying the a desired password:
    tpv -g <filename>


Format of the encrypted file:
    Each section must start with 'for: '

    for: name_of_website
    name username_for_website
    pass password_for_website
    hmmm add_as_many_fields_as_you_want

    for: <section name>
    <field name> <value name>
    ...
    <field name> <value name>


To add/edit many passwords quickly:
    # You can decrypt the whole thing:
    tpv -d <filename>

    # Edit the file with a text editor or your choice:
    $EDITOR <filename>

    # Encrypt the file again:
    tpv -c <filename>

