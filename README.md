# MPD Docker

## Docker-Compose
```
version: "3.9"
services:

  mpd:
    container_name: mpd
    image: rafaelagp/mpd:latest
    user: {user_id}:{group_id}
    group_add:
      - {audio_group_id}
    ports:
      - 6600:6600
    volumes:
      - /path/to/mpd.conf:/etc/mpd.conf
      - /path/to/music:/var/lib/mpd/music
      - /path/to/config:/var/lib/mpd
    devices:
      - /dev/snd
    restart: unless-stopped
 ```
    
user_id = Id for the user with filesystem permission<br>
group_id = Id for the primary group of the user with filesystem permission<br>
audio_group_id = Id for the audio group for /dev/snd access<br>

```
aplay -L
```
Use the above command to list the sound devices within the container and configure the mpd.conf accordingly.
