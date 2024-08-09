#!/bin/bash

# Install NVM (Node Version Manager)
echo "Installing NVM (Node Version Manager)..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Source the NVM script to use it in the same session
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo "NVM installation completed."

# Check if NVM was installed successfully
command -v nvm
if [ $? -eq 0 ]; then
    echo "NVM is installed."
else
    echo "NVM installation failed."
fi
