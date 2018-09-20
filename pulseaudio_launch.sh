# Terminate already running bar instances
killall -q pulseaudio

# Wait until the processes have been shut down
while pgrep -u $UID -x pulseaudio >/dev/null; do sleep 1; done

# Launch pulseaudio
pulseaudio &

echo "PulseAudio launched..."