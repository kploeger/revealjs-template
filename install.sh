#!/usr/bin/env bash
set -e

# 1. Verify Ubuntu
if [[ -f /etc/os-release ]]; then
  . /etc/os-release
  [[ "$ID" == "ubuntu" ]] || { echo "This script supports Ubuntu only."; exit 1; }
else
  echo "/etc/os-release not found; aborting."; exit 1
fi

# 2. Update & core tools
sudo apt-get update                                              # refresh package lists
sudo apt-get install -y curl gnupg lsb-release ca-certificates   # repo management basics

# 3. Ensure Python points to Python 3
sudo apt-get install -y python3 python-is-python3                # /usr/bin/python → python3 :contentReference[oaicite:4]{index=4}

# 4. Install build dependencies for node-gyp
sudo apt-get install -y build-essential python3-dev make         # C toolchain + Python headers :contentReference[oaicite:5]{index=5}

# 5. (Optional) Force node-gyp to use python3 if needed
export PYTHON="$(which python3)"                                 # ensure the env var points to python3 :contentReference[oaicite:6]{index=6}

# 6. Install NodeSource’s Node.js and npm (if not already)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -  # Node.js 20.x repo
sudo apt-get install -y nodejs                                    # includes npm

# 7. In your project: reinstall deps
cd "$(dirname "$0")"                                             # change to script's directory
rm -rf node_modules package-lock.json                             # clean slate
npm install                                                       # install dependencies

echo "All set! You can now run: npm run dev"

