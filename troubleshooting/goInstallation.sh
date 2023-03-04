# ------------------------------------------------
#!/bin/bash
# This script will update the .bashrc file to include the binary path for Go.
# This will allow you to run the go command from anywhere on the Linux machine. 
# ------------------------------------------------

echo "Script starting..."
echo "export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin" >> ~/.bashrc
source ~/.bashrc
echo "Script complete!"