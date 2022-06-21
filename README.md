# Project Zomboid Server

## Setting up the server

Useful links:

- [steamcmd](https://developer.valvesoftware.com/wiki/SteamCMD#Linux)
- [Setting up the dedicated server](https://pzwiki.net/wiki/Dedicated_Server)

### Setting up memory usage

1. Go to the installation directory of the dedicated server
2. Modify `ProjectZomboid64.json`
3. Add `-XmsYG`, where `Y` is a number in GB to the JSON `vmArgs` array
4. Set `-XmxYG` that already exists there to the same number as `Y` in the previous statement

## Setting up systemd

Files are in the systemd directory.

1. Place `zomboid.service` and `zomboid.socket` in `/usr/lib/systemd/system/`
2. Modify the paths and user accounts to be correct
3. `sudo systemctl enable zomboid`
4. To view logs: `journalctl -u zomboid -f`

## Starting the server

1. Place `start-zomboid.sh` somewhere
2. Modify `SERVER_DIR` and `SERVER_NAME` to the desired values

## Game Configuration

The provided game configurations are `.cfg` files. We need to convert them into `.lua` files for the server.

1. Run `python3 scripts/convert-config.py <file_to_convert>` to convert the files
2. Put the output into `~/Zomboid/.../SERVER_NAME/something.lua`
