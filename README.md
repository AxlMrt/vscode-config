# Visual Studio Code Setup Script

This script automates the setup process for Visual Studio Code (VSCode), including the installation of extensions and configuration of settings.

## Prerequisites

Before running the script, ensure you have the following:

- [Visual Studio Code](https://code.visualstudio.com/) installed.
- [yay](https://github.com/Jguer/yay) installed, which is an AUR helper.

## Instructions

1. **Clone this Repository:**

```bash
git clone https://github.com/AxlMrt/vscode-config
cd vscode-setup
```

2. **Make the Setup Script Executable:**

Run the following command to make the setup script executable:

```bash
chmod +x install_vscode.sh
```

3. **Run the Setup Script:**

```
./install.sh
```

This script will install VSCode, install the extensions listed in `extensions.txt`, and configure VSCode settings using `settings.json`.

## Additional Notes

- **Updating Extensions:**
  If you need to update your list of extensions, simply edit the `extensions.txt` file and rerun the setup script.

- **Updating Settings:**
  Similarly, if you update your VSCode settings, edit the `settings.json` file and rerun the setup script.

- **Manual Modifications:**
  Feel free to manually modify the `install.sh` script according to your specific needs.
