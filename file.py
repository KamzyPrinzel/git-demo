import subprocess
import sys
import os

def install_dependencies(requirements_file="requirements.txt"):
    if not os.path.exists(requirements_file):
        print(f"Error: '{requirements_file}' not found.")
        sys.exit(1)

    try:
        print(f"Installing dependencies from {requirements_file}...")
        subprocess.check_call([sys.executable, "-m", "pip", "install", "-r", requirements_file])
        print("Dependencies installed successfully.")
    except subprocess.CalledProcessError as e:
        print("Failed to install dependencies.")
        sys.exit(1)

if __name__ == "__main__":
    install_dependencies()
