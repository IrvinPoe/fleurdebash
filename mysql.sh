# mysql

    req="SELECT username AS user,(SELECT AES_DECRYPT(from_base64(password), '"${plan}"') FROM celeonet_postfix.mailbox WHERE username LIKE user) AS pass FROM celeonet_postfix.mailbox;"
    mysql -h ${1} -BNe "${req}"
