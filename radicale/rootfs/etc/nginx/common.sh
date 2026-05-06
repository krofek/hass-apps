#!/usr/bin/env bashio

encrypt_flag="
=============================
==== Encrypt Credentials ====
=============================
"

create_access_file() {
    bashio::log.info "${encrypt_flag}"

    bashio::log.info "Creating a new .htpasswd."
    rm -rf "${CREDENTIALS_PATH}"
    touch "${CREDENTIALS_PATH}"

    bashio::log.info "Adding encrypted credentials to .htpasswd."
    for user in $(bashio::config "auth_users|keys"); do
        username=$(bashio::config "auth_users[${user}].username")
        password=$(bashio::config "auth_users[${user}].password")

        htpasswd -bB "$CREDENTIALS_PATH" "$username" "$password"
    done
}
