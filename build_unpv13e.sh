cd unpv13e
./configure
cd lib
make

cd ../libfree
make

cd ../libroute
make

cd ../intro
make

# Kill any existing daytimetcpsrv process
if pgrep daytimetcpsrv > /dev/null
then
    echo "daytimetcpsrv already running, killing it..."
    pkill daytimetcpsrv
    sleep 1
fi

# Start server in background
./daytimetcpsrv &
SERVER_PID=$!

# Give server time to start up
sleep 1

# Run client
./daytimetcpcli 127.0.0.1

# Clean up: kill server after client exits
kill $SERVER_PID