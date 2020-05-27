# Windows-firewall-blocking-by-CMD
Script Blocking a program on the windows firewall by CMD. | Script Bloqueando um programa no firewall do windows pelo CMD.

### Obsevação antes de começar a usar: <br>Para cada execução deste script é criado uma nova requisição no firewall, note que a lista de requisições no firewall não será sobrescrita, nem apagada a cada execução do script, muitas execuções irá aumentar o número de requisição no firewall, sobrecarregando visualmente a lista de requisições, mas não atrapalha o funcionamento correto do firewall, apenas visualmente, então apague manualmente ou crie um script para apagar todas as requisição no firewall.<br>
Caso você crie um script para apagar me avise, ficarei feliz em saber! <br>
Obrigado!

netsh advfirewall firewall add rule name="Nome_do_programa_sem_apagar_as_aspas" dir=out program="C:\Program Files\Local_do_programa_sem_apagar_as_aspas" description="Descricao_do_programa_sem_apagar_as_aspas" service=any enable=no profile=any localip=any remoteip=any security=notrequired action=block

Modo de usar:<br>
Crie um arquivo "*.bat"<br>
Copie a linha acima para cada programa que deseja bloquear no firewall.<br>
Execute o arquivo "*.bat" como adminstrador.<br>

Manipular a firewall do Windows 7 através da linha de comandos.


O utilitário netsh (Network Shell) encontra-se presente em todas as edições do Windows 7 e permite mostrar ou alterar a configuração de rede de um determinado computador (local ou remoto).

Existem duas formas de se utilizar este comando: através da shell ou passando os directamente os parâmetros. Nesta publicação vou falar apenas na passagem directa de parâmetros. Para explorar a shell e obterem a lista completa de operações possíveis de se efectuar basta na linha de comandos executar “netsh”.

netsh

 

Desactivar a firewall no perfil Domínio

netsh advfirewall set domainprofile state off

 

Desactivar a firewall no perfil Privado

netsh advfirewall set privateprofile state off

 

Desactivar a firewall no perfil Público

netsh advfirewall set publicprofile state off

 

Desactivar a firewall para todos os perfis

netsh advfirewall set all state off

 

Activar a firewall no perfil Domínio

netsh advfirewall set domainprofile state on

 

Activar a firewall no perfil Privado

netsh advfirewall set privateprofile state on

 

Activar a firewall no perfil Público

netsh advfirewall set publicprofile state on

 

Activar a firewall para todos os perfis

netsh advfirewall set all state on

 

Exportar todas as configurações da firewall

netsh advfirewall export c:\advfirewall.wfw

 

Importar ficheiro com as configurações da firewall

netsh advfirewall import c:\advfirewall.wfw

 

Adicionar uma excepção para uma aplicação em específico

netsh advfirewall firewall add rule name=regra_para_permitir_acesso_inbound_do_notepad dir=in program=c:\Windows\System32\notepad.exe  action=allow

 

Criar uma excepção para o porto 80 do protocolo TCP

netsh advfirewall firewall add rule name= permitir_trafego_porto_80 dir=in action=allow protocol=TCP localport=80

 

Repor as configurações originais da firewall

netsh advfirewall reset

 

Registar todas as ligações ignoradas pela firewal referente a todos os perfis

netsh advfirewall set allprofiles logging droppedconnections enable

 

Registar todas as ligações efectuadas com sucesso referente a todos os perfis

netsh advfirewall set allprofiles logging allowedconnections enable

 

Verificar as configurações gerais da firewall referente a todos os perfis

netsh advfirewall show allprofiles
<br>
 <br>
<br>
 <br>
<br>
 <br>
<br>
 <br>
<br>
## Notas:<br>
Todas estas operações requerem elevação de privilégios<br>
O parâmetros “advfirewall” só existe no Windows 7 e no Windows 2008 R2. Nas versões anteriores o comando é “firewall”<br>
O utilitário Netsh está presente desde o Windows XP SP2<br>
O ficheiro de registo da firewall está normalmente localizado em %systemroot%\system32\LogFiles\Firewall\

Fonte: https://ojmoura.wordpress.com/2010/10/19/manipular-a-firewall-do-windows-7-atravs-da-linha-de-comandos/

https://felipegbass.wordpress.com/2012/07/07/gerenciando-o-firewall-do-windows-via-command-prompt/
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


