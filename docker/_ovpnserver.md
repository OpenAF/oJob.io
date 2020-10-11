## Shell scripts

| Script | Description | Example |
|--------|-------------|---------|
| **openvpn_start**   | Starts the openvpn docker container | ````./openvpn_start.sh```` | 
| **openvpn_stop**    | Stops the openvpn docker container | ````./openvpn_stop.sh```` |
| **openvpn_add**     | Creates a new vpn certificate | ````./openvpn_add.sh exampleUser```` |
| **openvpn_del**     | Delete a previously created vpn certificate | ````./openvpn_del.sh exampleUser```` |
| **openvpn_list**    | List the current enabled vpn certificates | ````./openvpn_list.sh```` |
| **openvpn_destroy** | Destroys the openvpn docker container | ````./openvpn_destroy.sh```` |