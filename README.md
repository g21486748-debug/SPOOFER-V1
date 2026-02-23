Right-click the .bat file and select "Run as administrator" to ensure permissions are granted.
If the script fails, check for errors like:
Access is denied → You didn’t run it as admin.
The system cannot find the file specified → Ensure the script is saved correctly and the path is valid.

Verify the Spoof

Open Command Prompt and run:

   reg query "HKLM\Hardware\Description\System\CentralProcessor\0"
Look for the Identifier value to confirm it’s changed.

Reboot the system for the changes to fully take effect (some programs cache HWID data).
