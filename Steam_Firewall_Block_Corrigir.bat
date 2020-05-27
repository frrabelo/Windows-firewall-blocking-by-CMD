:MENU
color f0
CLS
@ECHO OFF
TITLE Blocking Steam in the Windows Firewall
@ECHO OFF
ECHO :::::::: ::::: :::::::    :::::::: :::       :::    :::    :::    :::        
ECHO :+:       :+:  :+:    :+: :+:      :+:       :+:   :+:+:   :+:    :+:        
ECHO +:+       +:+  +:+    +:+ +:+      +:+       +:+  +:+ +:+  +:+    +:+        
ECHO :#:+:#    +#+  +#++#++:+  +#+#+    +:+  +#+ +#++ +#+:::+#+ +#+    +#+
ECHO +#+       +#+  +#+    +#+ +#+      +#+ +#+#+ +#+ +#+   +#+ +#+    +#+        
ECHO #+#       #+#  #+#    #+# #+#       #+#+# #+#+#  #+#   #+# #+#    #+#        
ECHO ###      ##### ###    ### ########   ###   ###   ###   ### ###### #######
ECHO         :::::::: ::::::::::: ::::::::::     :::     ::::     ::::  
ECHO        :+:    :+:    :+:     :+:          :+: :+:   +:+::   ::+:+ 
ECHO        +:+           +:+     +:+         +:+   +:+  +:+ +:+:+ +:+ 
ECHO        +#+:::+#+     +#+     +#+:::++   +#++:::++#+ +#+  +:+  +#+
ECHO               +#+    +#+     +#+        +#+     +#+ +#+       +#+ 
ECHO        #+#    #+#    #+#     #+#        #+#     #+# #+#       #+# 
ECHO         ########     ###     ########## ###     ### ###       ### 
ECHO           :::::::::  :::        ::::::::   ::::::::  :::    ::: 
ECHO           :+:    :+: :+:       :+:    :+: :+:    :+: :+:   :+:  
ECHO           +:+    +:+ +:+       +:+    +:+ +:+        +:+  +:+   
ECHO           +#++:++#+  +#+       +#+    +:+ +#+        +#++:++    
ECHO           +#+    +#+ +#+       +#+    +#+ +#+        +#+  +#+   
ECHO           #+#    #+# #+#       #+#    #+# #+#    #+# #+#   #+#  
ECHO           #########  ########## ########   ########  ###    ### 
ECHO   Choose:
ECHO          L - Language
ECHO          E - Enabler Steam in Firewall
ECHO.         D - Disabler Steam in Firewall
ECHO          I - Instructions
ECHO          X - Exit
##
SET /P Choice=
IF /I '%Choice%'=='L' GOTO L
IF /I '%Choice%'=='E' GOTO E
IF /I '%Choice%'=='D' GOTO D
IF /I '%Choice%'=='I' GOTO I
IF /I '%Choice%'=='x' GOTO x


:E
cls
@ECHO Enabler Steam in Firewall
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\bin\cef\cef.win7\steamwebhelper.exe" description="Steam Firewall Blocker" protocol=tcp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\bin\cef\cef.win7\steamwebhelper.exe" description="Steam Firewall Blocker" protocol=udp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\bin\cef\cef.win7\wow_helper.exe" description="Steam Firewall Blocker" protocol=udp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\bin\cef\cef.win7\html5app_steam.exe" description="Steam Firewall Blocker" protocol=udp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block

netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\Steam.exe" description="Steam Firewall Blocker" protocol=udp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\Steam.exe" description="Steam Firewall Blocker" protocol=tcp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\steamerrorreporter.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\steamerrorreporter64.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\streaming_client.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\GameOverlayUI.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\WriteMiniDump.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\Steam.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\steamerrorreporter.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\steamerrorreporter64.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\streaming_client.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\GameOverlayUI.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\WriteMiniDump.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
cls
GOTO MENU


:D
cls
@ECHO Disabler Steam in Firewall
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\bin\cef\cef.win7\steamwebhelper.exe" description="Steam Firewall Blocker" protocol=tcp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\bin\cef\cef.win7\steamwebhelper.exe" description="Steam Firewall Blocker" protocol=udp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\bin\cef\cef.win7\wow_helper.exe" description="Steam Firewall Blocker" protocol=udp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\bin\cef\cef.win7\html5app_steam.exe" description="Steam Firewall Blocker" protocol=udp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow

netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\Steam.exe" description="Steam Firewall Blocker" protocol=udp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\Steam.exe" description="Steam Firewall Blocker" protocol=tcp service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\steamerrorreporter.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\steamerrorreporter64.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\streaming_client.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\GameOverlayUI.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=in program="C:\Program Files (x86)\Steam\WriteMiniDump.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\Steam.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\steamerrorreporter.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\steamerrorreporter64.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\streaming_client.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\GameOverlayUI.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Steam Firewall Blocker" dir=out program="C:\Program Files (x86)\Steam\WriteMiniDump.exe" description="Steam Firewall Blocker" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
cls
GOTO MENU

:I
CLS
@ECHO OFF
ECHO #########################################################################
ECHO.#                                                                       #
ECHO #           Run this batch as administrator to work properly.           #
ECHO.#                                                                       #
ECHO.#         R - Return                                                    #
ECHO.#                                                                       #
ECHO #########################################################################
SET /P Choice=
IF /I '%Choice%'=='r' GOTO MENU
IF /I '%Choice%'=='x' GOTO x

:l
CLS
@ECHO OFF
ECHO #########################################################################
ECHO.#                                                                       #
ECHO.#         1 - English                                                   #
ECHO.#         2 - Portugues                                                 #
ECHO.#                                                                       #
ECHO #########################################################################
SET /P Choice=
IF /I '%Choice%'=='1' GOTO MENU
IF /I '%Choice%'=='2' GOTO MenuPt
IF /I '%Choice%'=='x' GOTO x

:X
exit

:MenuPt
color f0
CLS
@ECHO OFF
TITLE Bloqueando o Steam no Firewall do Windows
ECHO.
ECHO :::::::: ::::: :::::::    :::::::: :::       :::    :::    :::    :::        
ECHO :+:       :+:  :+:    :+: :+:      :+:       :+:   :+:+:   :+:    :+:        
ECHO +:+       +:+  +:+    +:+ +:+      +:+       +:+  +:+ +:+  +:+    +:+        
ECHO :#:+:#    +#+  +#++#++:+  +#+#+    +:+  +#+ +#++ +#+:::+#+ +#+    +#+
ECHO +#+       +#+  +#+    +#+ +#+      +#+ +#+#+ +#+ +#+   +#+ +#+    +#+        
ECHO #+#       #+#  #+#    #+# #+#       #+#+# #+#+#  #+#   #+# #+#    #+#        
ECHO ###      ##### ###    ### ########   ###   ###   ###   ### ###### #######
ECHO         :::::::: ::::::::::: ::::::::::     :::     ::::     ::::  
ECHO        :+:    :+:    :+:     :+:          :+: :+:   +:+::   ::+:+ 
ECHO        +:+           +:+     +:+         +:+   +:+  +:+ +:+:+ +:+ 
ECHO        +#+:::+#+     +#+     +#+:::++   +#++:::++#+ +#+  +:+  +#+
ECHO               +#+    +#+     +#+        +#+     +#+ +#+       +#+ 
ECHO        #+#    #+#    #+#     #+#        #+#     #+# #+#       #+# 
ECHO         ########     ###     ########## ###     ### ###       ### 
ECHO           :::::::::  :::        ::::::::   ::::::::  :::    ::: 
ECHO           :+:    :+: :+:       :+:    :+: :+:    :+: :+:   :+:  
ECHO           +:+    +:+ +:+       +:+    +:+ +:+        +:+  +:+   
ECHO           +#++:++#+  +#+       +#+    +:+ +#+        +#++:++    
ECHO           +#+    +#+ +#+       +#+    +#+ +#+        +#+  +#+   
ECHO           #+#    #+# #+#       #+#    #+# #+#    #+# #+#   #+#  
ECHO           #########  ########## ########   ########  ###    ### 
ECHO. Escolha:
ECHO          L - Lingua
ECHO          H - Habilitar Steam no Firewall
ECHO.         N - Desabilitar Steam no Firewall
ECHO          P - Instrucoes
ECHO          X - Sair
SET /P Choice=
IF /I '%Choice%'=='L' GOTO L
IF /I '%Choice%'=='H' GOTO H
IF /I '%Choice%'=='N' GOTO N
IF /I '%Choice%'=='P' GOTO P
IF /I '%Choice%'=='x' GOTO x


:H
cls
@ECHO Enabler Steam in Firewall
escreva aqui o comando
cls
GOTO MenuPt


:N
cls
@ECHO Disabler Steam in Firewall
escreva aqui o comando
cls
GOTO MenuPt


:P
CLS
@ECHO OFF
ECHO #########################################################################
ECHO.#                                                                       #
ECHO #   Execute este batch como administrador para funcionar corretamente.  #
ECHO.#                                                                       #
ECHO.#         V - Voltar                                                    #
ECHO.#                                                                       #
ECHO #########################################################################
SET /P Choice=
IF /I '%Choice%'=='v' GOTO MenuPt
IF /I '%Choice%'=='x' GOTO x

