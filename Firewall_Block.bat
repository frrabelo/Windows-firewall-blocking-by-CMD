:MENU
color 1f
CLS
@ECHO OFF
TITLE Blocking Calculator in the Windows Firewall
@ECHO OFF
ECHO. 
ECHO   :::::::: ::::: :::::::    :::::::: :::       :::    :::    :::    :::        
ECHO   :+:       :+:  :+:    :+: :+:      :+:       :+:   :+:+:   :+:    :+:        
ECHO   +:+       +:+  +:+    +:+ +:+      +:+       +:+  +:+ +:+  +:+    +:+        
ECHO   :#:+:#    +#+  +#++#++:+  +#+#+    +:+  +#+ +#++ +#+:::+#+ +#+    +#+
ECHO   +#+       +#+  +#+    +#+ +#+      +#+ +#+#+ +#+ +#+   +#+ +#+    +#+        
ECHO   #+#       #+#  #+#    #+# #+#       #+#+# #+#+#  #+#   #+# #+#    #+#        
ECHO   ###      ##### ###    ### ########   ###   ###   ###   ### ###### #######
ECHO. 
ECHO           :::::::::  :::        ::::::::   ::::::::  :::    ::: 
ECHO           :+:    :+: :+:       :+:    :+: :+:    :+: :+:   :+:  
ECHO           +:+    +:+ +:+       +:+    +:+ +:+        +:+  +:+   
ECHO           +#++:++#+  +#+       +#+    +:+ +#+        +#++:++    
ECHO           +#+    +#+ +#+       +#+    +#+ +#+        +#+  +#+   
ECHO           #+#    #+# #+#       #+#    #+# #+#    #+# #+#   #+#  
ECHO           #########  ########## ########   ########  ###    ###
ECHO.  
ECHO   Choose:
ECHO          L - Language
ECHO          E - Enabler Calculator in Firewall
ECHO          D - Disabler Calculator in Firewall
ECHO          I - Instructions
ECHO          X - Exit
ECHO Type it:
SET /P Choice=
IF /I '%Choice%'=='L' GOTO L
IF /I '%Choice%'=='E' GOTO E
IF /I '%Choice%'=='D' GOTO D
IF /I '%Choice%'=='I' GOTO I
IF /I '%Choice%'=='x' GOTO x


:E
cls
@ECHO Enabler Calculator in Firewall
netsh advfirewall firewall add rule name="Calculator" dir=out program=C:\Windows\System32\calc.exe description=Calculator service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block
netsh advfirewall firewall add rule name="Calculator" dir=in program=C:\Windows\System32\calc.exe description=Calculator service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block

cls
GOTO MENU


:D
cls
@ECHO Disabler Calculator in Firewall
netsh advfirewall firewall add rule name="Calculator" dir=out program=C:\Windows\System32\calc.exe description=Calculator service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow
netsh advfirewall firewall add rule name="Calculator" dir=in program=C:\Windows\System32\calc.exe description=Calculator service=any enable=no profile=any localip=any remoteip=any security=notrequired action=allow

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
TITLE Bloqueando a Calculadora no Firewall do Windows
ECHO. 
ECHO   :::::::: ::::: :::::::    :::::::: :::       :::    :::    :::    :::        
ECHO   :+:       :+:  :+:    :+: :+:      :+:       :+:   :+:+:   :+:    :+:        
ECHO   +:+       +:+  +:+    +:+ +:+      +:+       +:+  +:+ +:+  +:+    +:+        
ECHO   :#:+:#    +#+  +#++#++:+  +#+#+    +:+  +#+ +#++ +#+:::+#+ +#+    +#+
ECHO   +#+       +#+  +#+    +#+ +#+      +#+ +#+#+ +#+ +#+   +#+ +#+    +#+        
ECHO   #+#       #+#  #+#    #+# #+#       #+#+# #+#+#  #+#   #+# #+#    #+#        
ECHO   ###      ##### ###    ### ########   ###   ###   ###   ### ###### #######
ECHO. 
ECHO           :::::::::  :::        ::::::::   ::::::::  :::    ::: 
ECHO           :+:    :+: :+:       :+:    :+: :+:    :+: :+:   :+:  
ECHO           +:+    +:+ +:+       +:+    +:+ +:+        +:+  +:+   
ECHO           +#++:++#+  +#+       +#+    +:+ +#+        +#++:++    
ECHO           +#+    +#+ +#+       +#+    +#+ +#+        +#+  +#+   
ECHO           #+#    #+# #+#       #+#    #+# #+#    #+# #+#   #+#  
ECHO           #########  ########## ########   ########  ###    ###
ECHO. 
ECHO. Escolha:
ECHO          L - Lingua
ECHO          H - Habilitar Calculadora no Firewall
ECHO.         N - Desabilitar Calculadora no Firewall
ECHO          P - Instrucoes
ECHO          X - Sair
ECHO Type it:

SET /P Choice=
IF /I '%Choice%'=='L' GOTO L
IF /I '%Choice%'=='H' GOTO H
IF /I '%Choice%'=='N' GOTO N
IF /I '%Choice%'=='P' GOTO P
IF /I '%Choice%'=='x' GOTO x


:H
cls
@ECHO Enabler Calculator in Firewall
escreva aqui o comando
cls
GOTO MenuPt


:N
cls
@ECHO Disabler Calculator in Firewall
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

