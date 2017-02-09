## Start i3 Window Manager
# exec i3

xrdb -merge ~/.Xresources

# Start i3 Window Manager (Also log output)
exec i3 -V >> ~/.i3/i3log-$(date +'%d-%m-%y-%k-%M-%S') 2>&1

