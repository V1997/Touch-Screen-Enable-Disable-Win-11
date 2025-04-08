# 🖐️ Toggle Touch Screen Script for Windows 11

This script allows you to **enable or disable the "HID-compliant touch screen"** device on your Windows 11 machine with a simple double-click.

---

## 📦 Folder Structure
📁 Toggle_Touch_Screen/  
├── Toggle_Screen/  
│   └── toggle_touchscreen.ps1  
└── toggle_touchscreen.bat  

 

---

## 🚀 How It Works

- The **batch file** (`toggle_touchscreen.bat`) launches the **PowerShell script** with administrator privileges.
- The PowerShell script checks the current status of the HID-compliant touch screen device.
  - If it’s **enabled**, it will **disable** it.
  - If it’s **disabled**, it will **enable** it.

---

## 🔧 How to Use

1. **Place the files** as shown in the folder structure above.
2. Double-click `toggle_touchscreen.bat`.
3. Accept the **UAC prompt** (it needs administrator privileges).
4. The script will toggle your touch screen on or off.

---

## 🛡️ Requirements

- **Administrator privileges** (you’ll get a prompt each time).
- **PowerShell execution policy** must allow script execution. If needed, run this once in PowerShell:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

📝 Optional Logging
You can add this line to the PowerShell script (toggle_touchscreen.ps1) to keep a toggle history:

🧰 Customization
Update the deviceName in toggle_touchscreen.ps1 if your touch screen has a slightly different name.

To check available device names:

Get-PnpDevice | Where-Object { $_.Class -eq "HIDClass" }


📌 Notes
Works on Windows 10/11.

Script is tailored for systems with a single internal HID-compliant touch screen device.

If you have multiple touchscreen devices, modify the PowerShell script to target by InstanceId.


🧡 Credits
Crafted with ❤️ and PowerShell for convenience and control.
