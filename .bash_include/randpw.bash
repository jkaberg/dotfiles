randpw() {
    < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-40}; echo;
}
