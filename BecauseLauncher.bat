@Echo off
color a
title Because Launcher
echo [=============================================================================]
echo [                            Because Launcher                                 ]
echo [                            Maker :Reza Aksa                                 ]
echo [                             Version : Beta                                  ]
echo [                               Contact:                                      ]
echo [                         Email : admin@rezaaksa.ga                           ]
echo [                 Form : https://www.rezaaksa.ga/p/contact.html               ]
echo [                    Github : https://github.com/rezaaksa                     ]
echo [=============================================================================]
set "psCommand=powershell -Command "$pword = read-host 'Masukkan Token' -AsSecureString ; ^
      $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
            [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
 for /f "usebackq delims=" %%p in (`%psCommand%`) do set token=%%p
Start PointBlank.exe /GameID:"GarenaPB" /Token: %token%