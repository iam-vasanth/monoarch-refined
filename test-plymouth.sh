#!/bin/bash

# Tests splash animation then password prompt, auto-closes after durations

SPLASH_DURATION=10
PASSWORD_DURATION=10
THEME_NAME="monoarch-refined"

echo "Starting Plymouth combined test..."
echo "Theme: $THEME_NAME"
echo "Splash duration: $SPLASH_DURATION seconds"
echo "Password duration: $PASSWORD_DURATION seconds"
echo ""

# Start Plymouth with splash
echo "[1/2] Showing splash screen..."
sudo plymouthd
sudo plymouth --show-splash
echo "Splash is showing. Waiting $SPLASH_DURATION seconds..."
sleep $SPLASH_DURATION

# Show password prompt
echo ""
echo "[2/2] Showing password prompt..."
sudo plymouth ask-for-password --prompt="Enter Password" &
echo "Password prompt is showing. Type to see bullets."
echo "Will auto-close in $PASSWORD_DURATION seconds..."
sleep $PASSWORD_DURATION

# Kill Plymouth
echo ""
echo "Stopping Plymouth..."
sudo plymouth --quit
sudo killall plymouthd
echo ""
echo "Test complete!"
