# mysql

    req="SELECT username AS user,(SELECT AES_DECRYPT(from_base64(password), '"${plan}"') FROM postfix.mailbox WHERE username LIKE user) AS pass FROM postfix.mailbox;"
    mysql -h ${1} -BNe "${req}"
