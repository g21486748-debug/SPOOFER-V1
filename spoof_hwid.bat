   @echo off
   setlocal

   :: Spoof HWID by modifying CPU serial number in the registry
   echo Spoofing HWID... (this will change the CPU identifier)
   reg add "HKLM\Hardware\Description\System\CentralProcessor\0" /v "Identifier" /t REG_SZ /d "mngh-hvnb-bg6c-hf7f" /f

   :: Optional: Spoof motherboard serial number (requires editing system files)
   :: You can use a tool like "HWID Spoofer" or manually edit the registry key:
   :: reg add "HKLM\System\CurrentControlSet\Services\hal" /v "SerialNumber" /t REG_DWORD /d 0x12345678 /f

   :: Optional: Spoof MAC address using ipconfig (requires admin rights)
   :: netsh interface set interface name="Ethernet" newmac=00-11-22-33-44-55

   echo HWID spoofed successfully. Reboot for changes to take effect.
   pause
