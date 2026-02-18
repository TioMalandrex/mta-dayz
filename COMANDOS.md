# ⌨️ Comandos e Atalhos - MTA DayZ

> **Guia Completo de Comandos, Atalhos de Teclado e Funcionalidades**
> 
> Versão: 0.3r2 | Plataforma: Multi Theft Auto: San Andreas

---

## 📖 Índice

1. [Comandos de Jogador](#-comandos-de-jogador)
2. [Comandos de Administrador](#️-comandos-de-administrador)
3. [Atalhos de Teclado](#-atalhos-de-teclado)
4. [Menu de Interação](#-menu-de-interação)
5. [Painel de Administração](#️-painel-de-administração)
6. [Lista Completa Organizada](#-lista-completa-organizada)
7. [Dicas de Uso](#-dicas-de-uso)
8. [Perguntas Frequentes](#-perguntas-frequentes)

---

## 👤 Comandos de Jogador

### 💬 Comandos de Chat

Estes comandos permitem comunicação entre jogadores.

#### `/globalchat <mensagem>` ou Tecla **X**
- **Descrição**: Envia mensagem para todos os jogadores no servidor
- **Alias**: `/g`, `/global`
- **Alcance**: Ilimitado (todos veem)
- **Cor**: Branco
- **Exemplo**: 
  ```
  /globalchat Olá pessoal, alguém quer formar grupo?
  ```
- **Uso**: Chat público geral

#### `/radiochat <mensagem>` ou Tecla **U**
- **Descrição**: Envia mensagem pelo rádio (requer item Rádio)
- **Alias**: `/r`, `/radio`
- **Requisito**: Item "Radio Device" no inventário
- **Alcance**: Ilimitado (canal configurado)
- **Canais**: 1-100 (configurável no rádio)
- **Cor**: Verde
- **Exemplo**: 
  ```
  /radiochat [Canal 5] Preciso de ajuda em Cherno!
  ```
- **Uso**: Comunicação privada entre grupo com rádios no mesmo canal

#### `/teamchat <mensagem>` ou Tecla **Y**
- **Descrição**: Envia mensagem apenas para membros do seu grupo
- **Alias**: `/t`, `/team`, `/group`
- **Alcance**: Apenas membros do grupo
- **Cor**: Azul
- **Exemplo**: 
  ```
  /teamchat Estou indo buscar munição, aguardem
  ```
- **Uso**: Coordenação de grupo/clã

#### `/pm <jogador> <mensagem>`
- **Descrição**: Envia mensagem privada para um jogador específico
- **Alias**: `/msg`, `/whisper`, `/w`
- **Exemplo**: 
  ```
  /pm João123 Quer trocar munição por comida?
  ```
- **Uso**: Conversas privadas

#### `/me <ação>`
- **Descrição**: Expressa ação em terceira pessoa (roleplay)
- **Exemplo**: 
  ```
  /me procura por suprimentos na mochila
  ```
- **Resultado**: `*NomeDogador procura por suprimentos na mochila*`
- **Uso**: Roleplay e expressões

#### `/do <descrição>`
- **Descrição**: Descreve situação ou ambiente (roleplay)
- **Exemplo**: 
  ```
  /do O céu está escurecendo e a temperatura caindo
  ```
- **Uso**: Narrativa roleplay

### 🎮 Comandos de Utilidade

#### `/stats` ou `/estatisticas`
- **Descrição**: Mostra suas estatísticas completas
- **Informações**:
  - 🩸 Sangue atual / máximo
  - 🍖 Nível de fome
  - 💧 Nível de sede
  - 🌡️ Temperatura corporal
  - 🧟 Zumbis mortos
  - 💀 Mortes
  - 🎯 Disparos na cabeça
  - ⏱️ Tempo vivo atual
  - ⏰ Tempo total jogado
  - 😇 Humanidade
- **Exemplo**: 
  ```
  /stats
  ```

#### `/time` ou `/hora`
- **Descrição**: Mostra hora atual do servidor
- **Requisito**: Item "Watch" (Relógio) no inventário (opcional)
- **Exemplo**: 
  ```
  /time
  Resultado: 14:35 | Dia 5
  ```

#### `/players` ou `/jogadores`
- **Descrição**: Lista todos os jogadores online
- **Informações**: Nome, ID, ping, tempo online
- **Exemplo**: 
  ```
  /players
  Resultado: [15/100 jogadores online]
  ```

#### `/help` ou `/ajuda`
- **Descrição**: Mostra lista de comandos disponíveis
- **Uso**: Ajuda rápida
- **Exemplo**: 
  ```
  /help
  /help 2  (para ver página 2)
  ```

#### `/rules` ou `/regras`
- **Descrição**: Mostra regras do servidor
- **Uso**: Consultar normas

#### `/discord` ou `/site`
- **Descrição**: Mostra link do Discord/site do servidor
- **Uso**: Encontrar comunidade

#### `/ping`
- **Descrição**: Mostra seu ping atual
- **Exemplo**: 
  ```
  /ping
  Resultado: Seu ping: 45ms
  ```

#### `/fps`
- **Descrição**: Mostra taxa de quadros por segundo
- **Exemplo**: 
  ```
  /fps
  Resultado: FPS: 60
  ```

#### `/kill` ou `/matar`
- **Descrição**: Suicida seu personagem (cooldown de 5 minutos)
- **Aviso**: Você perderá todos os itens!
- **Uso**: Quando estiver preso ou quiser recomeçar
- **Exemplo**: 
  ```
  /kill
  ```

#### `/unstuck` ou `/destravar`
- **Descrição**: Teleporta você alguns metros caso esteja preso em objeto
- **Cooldown**: 10 minutos
- **Exemplo**: 
  ```
  /unstuck
  ```

### 🚗 Comandos de Veículos

#### `/vlock` ou `/trancar`
- **Descrição**: Tranca veículo que você está dirigindo
- **Requisito**: Item "Car Key" (Chave do Carro) no inventário
- **Uso**: Proteger veículo de outros jogadores
- **Exemplo**: 
  ```
  /vlock
  ```

#### `/vunlock` ou `/destrancar`
- **Descrição**: Destranca veículo previamente trancado por você
- **Exemplo**: 
  ```
  /vunlock
  ```

#### `/vflip` ou `/virar`
- **Descrição**: Vira veículo de volta (se estiver de cabeça para baixo)
- **Cooldown**: 5 minutos
- **Requisito**: Estar próximo ao veículo
- **Exemplo**: 
  ```
  /vflip
  ```

#### `/vrepair` ou `/consertar`
- **Descrição**: Repara completamente o veículo
- **Requisito**: Item "Toolbox" no inventário + estar próximo
- **Custo**: Consome o Toolbox
- **Exemplo**: 
  ```
  /vrepair
  ```

#### `/vrefuel` ou `/reabastecer`
- **Descrição**: Reabastece veículo completamente
- **Requisito**: Item "Full Gas Canister" no inventário + estar próximo
- **Custo**: Consome a lata de combustível
- **Exemplo**: 
  ```
  /vrefuel
  ```

### 📍 Comandos de Localização

#### `/gps <canal>`
- **Descrição**: Define canal GPS para compartilhar localização
- **Requisito**: Item "GPS" no inventário
- **Canais**: 1-100
- **Uso**: Sincronizar localização com grupo
- **Exemplo**: 
  ```
  /gps 5
  Resultado: GPS configurado para canal 5
  ```

#### `/radio <canal>`
- **Descrição**: Altera canal do rádio
- **Requisito**: Item "Radio Device" no inventário
- **Canais**: 1-100
- **Exemplo**: 
  ```
  /radio 10
  Resultado: Rádio configurado para canal 10
  ```

#### `/coords` ou `/coordenadas`
- **Descrição**: Mostra suas coordenadas atuais (X, Y, Z)
- **Uso**: Compartilhar localização precisa
- **Exemplo**: 
  ```
  /coords
  Resultado: X: 1250.5, Y: -2048.3, Z: 59.7
  ```

### 👥 Comandos de Grupo

#### `/group create <nome>` ou `/grupo criar <nome>`
- **Descrição**: Cria um novo grupo
- **Limite**: 10 membros por grupo
- **Exemplo**: 
  ```
  /group create Sobreviventes
  ```

#### `/group invite <jogador>` ou `/grupo convidar <jogador>`
- **Descrição**: Convida jogador para seu grupo
- **Requisito**: Ser líder do grupo
- **Exemplo**: 
  ```
  /group invite João123
  ```

#### `/group accept` ou `/grupo aceitar`
- **Descrição**: Aceita convite de grupo
- **Exemplo**: 
  ```
  /group accept
  ```

#### `/group leave` ou `/grupo sair`
- **Descrição**: Sai do grupo atual
- **Exemplo**: 
  ```
  /group leave
  ```

#### `/group kick <jogador>` ou `/grupo expulsar <jogador>`
- **Descrição**: Expulsa membro do grupo
- **Requisito**: Ser líder do grupo
- **Exemplo**: 
  ```
  /group kick João123
  ```

#### `/group list` ou `/grupo listar`
- **Descrição**: Lista membros do grupo
- **Exemplo**: 
  ```
  /group list
  ```

### 💰 Comandos de Loja

#### `/shop` ou `/loja`
- **Descrição**: Abre menu da loja
- **Requisito**: Estar próximo a uma loja
- **Uso**: Comprar/vender itens
- **Exemplo**: 
  ```
  /shop
  ```

#### `/balance` ou `/saldo`
- **Descrição**: Mostra quantidade de zKills (moeda do jogo)
- **Exemplo**: 
  ```
  /balance
  Resultado: Você tem 1,250 zKills
  ```

---

## 🛡️ Comandos de Administrador

> **⚠️ ATENÇÃO**: Estes comandos requerem permissões de administrador configuradas no ACL.

### 👮 Moderação de Jogadores

#### `/kick <jogador> [motivo]` ou `/expulsar <jogador> [motivo]`
- **Descrição**: Expulsa jogador do servidor temporariamente
- **Permissão**: Moderador ou superior
- **Exemplo**: 
  ```
  /kick João123 Linguagem ofensiva
  ```
- **Resultado**: Jogador é desconectado e pode reconectar imediatamente

#### `/kickall [motivo]` ou `/expulsartodos [motivo]`
- **Descrição**: Expulsa todos os jogadores (exceto admins)
- **Permissão**: Admin ou superior
- **Uso**: Reinicialização do servidor, manutenção
- **Exemplo**: 
  ```
  /kickall Servidor será reiniciado em 5 minutos
  ```

#### `/ban <jogador> <tempo> [motivo]` ou `/banir <jogador> <tempo> [motivo]`
- **Descrição**: Bane jogador por tempo determinado
- **Permissão**: Admin ou superior
- **Tempo**: Formato em minutos (m), horas (h), dias (d)
  - `60m` = 60 minutos
  - `24h` = 24 horas
  - `7d` = 7 dias
  - `0` = permanente
- **Exemplo**: 
  ```
  /ban João123 7d Hack detectado
  /ban Pedro456 0 Trapaça múltiplas vezes
  ```

#### `/unban <jogador>` ou `/desbanir <jogador>`
- **Descrição**: Remove banimento de jogador
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /unban João123
  ```

#### `/banlist` ou `/listabanidos`
- **Descrição**: Lista todos os jogadores banidos
- **Permissão**: Moderador ou superior
- **Exemplo**: 
  ```
  /banlist
  ```

#### `/mute <jogador> <tempo> [motivo]` ou `/silenciar <jogador> <tempo> [motivo]`
- **Descrição**: Silencia jogador no chat
- **Permissão**: Moderador ou superior
- **Tempo**: Formato em minutos (m), horas (h)
- **Exemplo**: 
  ```
  /mute João123 30m Spam no chat
  ```

#### `/unmute <jogador>` ou `/dessilenciar <jogador>`
- **Descrição**: Remove silenciamento de jogador
- **Permissão**: Moderador ou superior
- **Exemplo**: 
  ```
  /unmute João123
  ```

#### `/freeze <jogador>` ou `/congelar <jogador>`
- **Descrição**: Congela jogador no local (não pode se mover)
- **Permissão**: Moderador ou superior
- **Uso**: Investigação, aplicação de regras
- **Exemplo**: 
  ```
  /freeze João123
  ```

#### `/unfreeze <jogador>` ou `/descongelar <jogador>`
- **Descrição**: Descongela jogador
- **Permissão**: Moderador ou superior
- **Exemplo**: 
  ```
  /unfreeze João123
  ```

#### `/slap <jogador> [força]` ou `/tapa <jogador> [força]`
- **Descrição**: Aplica tapa no jogador (lança para cima)
- **Permissão**: Moderador ou superior
- **Força**: 1-100 (padrão: 10)
- **Uso**: Diversão, aviso leve
- **Exemplo**: 
  ```
  /slap João123 50
  ```

#### `/slay <jogador>` ou `/matar <jogador>`
- **Descrição**: Mata jogador instantaneamente
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /slay João123
  ```

### 🔧 Comandos de Gerenciamento

#### `/give <jogador> <item> <quantidade>` ou `/dar <jogador> <item> <quantidade>`
- **Descrição**: Dá item específico para jogador
- **Permissão**: Admin ou superior
- **Itens**: Ver lista completa abaixo
- **Exemplo**: 
  ```
  /give João123 weapon11 1      (M4A1 HOLO)
  /give João123 mag5 5          (5 carregadores M4)
  /give Pedro456 medicine1 10   (10 bandagens)
  /give Maria789 fooditem4 5    (5 carnes cozidas)
  ```

**Lista de IDs de Itens**:

| Categoria | ID | Item |
|-----------|-----|------|
| **Armas** | weapon1-28 | VKS, DMR, CZ550, M4A1, etc. |
| **Munições** | mag1-10 | Pistol, Rifle, Sniper, etc. |
| **Comida** | fooditem1-11 | Water, Meat, Beans, etc. |
| **Medicamentos** | medicine1-8 | Bandage, Kit, Morphine, etc. |
| **Ferramentas** | toolbelt1-9 | GPS, Radio, Toolbox, etc. |
| **Mochilas** | backpack1-7 | Assault Pack, Alice Pack, etc. |
| **Capacetes** | helmet1-7 | Military, SWAT, etc. |
| **Coletes** | vest1-2 | Police Vest, Military Vest |
| **Roupas** | clothing1-9 | Survivor, Military, Ghillie, etc. |
| **Especiais** | item1-14 | Tent, C4, Mine, Gas, etc. |
| **Peças** | vehiclepart1-5 | Engine, Tire, Tank, etc. |

#### `/givemoney <jogador> <quantidade>` ou `/dardinheiro <jogador> <quantidade>`
- **Descrição**: Dá zKills (moeda) para jogador
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /givemoney João123 5000
  ```

#### `/heal <jogador>` ou `/curar <jogador>`
- **Descrição**: Cura jogador completamente
- **Permissão**: Admin ou superior
- **Efeito**: 
  - Sangue = 12000 (máximo)
  - Fome = 100
  - Sede = 100
  - Remove sangramento, dor, osso quebrado
- **Exemplo**: 
  ```
  /heal João123
  /heal all  (cura todos os jogadores)
  ```

#### `/spawn <jogador>` ou `/nascer <jogador>`
- **Descrição**: Força respawn do jogador
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /spawn João123
  ```

#### `/resetplayer <jogador>` ou `/resetarjogador <jogador>`
- **Descrição**: Reseta completamente personagem do jogador
- **Permissão**: Admin ou superior
- **Aviso**: Remove todos os itens e estatísticas!
- **Exemplo**: 
  ```
  /resetplayer João123
  ```

### 🚁 Comandos de Teleporte

#### `/goto <jogador>` ou `/ir <jogador>`
- **Descrição**: Teleporta você até o jogador
- **Permissão**: Moderador ou superior
- **Exemplo**: 
  ```
  /goto João123
  ```

#### `/gethere <jogador>` ou `/trazer <jogador>`
- **Descrição**: Teleporta jogador até você
- **Permissão**: Moderador ou superior
- **Exemplo**: 
  ```
  /gethere João123
  ```

#### `/sendto <jogador1> <jogador2>` ou `/enviar <jogador1> <jogador2>`
- **Descrição**: Teleporta jogador1 até jogador2
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /sendto João123 Pedro456
  ```

#### `/warp <x> <y> <z>` ou `/teleportar <x> <y> <z>`
- **Descrição**: Teleporta você para coordenadas específicas
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /warp 1250.5 -2048.3 59.7
  ```

#### `/mark` ou `/marcar`
- **Descrição**: Salva sua posição atual
- **Permissão**: Admin ou superior
- **Uso**: Criar ponto de teleporte rápido
- **Exemplo**: 
  ```
  /mark ponto1
  ```

#### `/gotomark` ou `/irparamarca`
- **Descrição**: Teleporta para posição marcada
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /gotomark ponto1
  ```

### 🚗 Comandos de Veículos (Admin)

#### `/spawnvehicle <id>` ou `/criarveiculo <id>`
- **Descrição**: Spawna veículo na sua frente
- **Permissão**: Admin ou superior
- **IDs de Veículos**:
  - `487` - MH6J (Helicóptero Civil)
  - `497` - AH6X Little Bird
  - `470` - HMMWV (Humvee)
  - `422` - Caminhonete
  - `468` - Motocicleta
  - `433` - URAL (Caminhão Militar)
  - `473` - Barco PBX
  - `509` - Bicicleta
  - `471` - Quadriciclo (ATV)
  - `463` - Moto Cross
- **Exemplo**: 
  ```
  /spawnvehicle 470  (Spawna Humvee)
  ```

#### `/delvehicle` ou `/deletarveiculo`
- **Descrição**: Deleta veículo que você está olhando
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /delvehicle
  ```

#### `/delvehicles` ou `/deletarveiculos`
- **Descrição**: Deleta todos os veículos do servidor
- **Permissão**: Admin ou superior
- **Aviso**: Ação irreversível!
- **Exemplo**: 
  ```
  /delvehicles
  ```

#### `/repairvehicle` ou `/consertarveiculo`
- **Descrição**: Repara completamente veículo que você está olhando
- **Permissão**: Moderador ou superior
- **Exemplo**: 
  ```
  /repairvehicle
  ```

#### `/flipvehicle` ou `/virarveiculo`
- **Descrição**: Vira veículo de volta (se estiver de cabeça para baixo)
- **Permissão**: Moderador ou superior
- **Exemplo**: 
  ```
  /flipvehicle
  ```

#### `/refuelvehicle` ou `/reabastecerveiculo`
- **Descrição**: Reabastece completamente veículo que você está olhando
- **Permissão**: Moderador ou superior
- **Exemplo**: 
  ```
  /refuelvehicle
  ```

### 🌦️ Comandos de Ambiente

#### `/setweather <id>` ou `/definirclima <id>`
- **Descrição**: Altera clima do servidor
- **Permissão**: Admin ou superior
- **IDs de Clima**:
  - `0` - Ensolarado
  - `1` - Nublado
  - `8` - Tempestade
  - `9` - Neblina
  - `16` - Chuvoso
- **Exemplo**: 
  ```
  /setweather 16  (Define clima chuvoso)
  ```

#### `/settime <hora> <minuto>` ou `/definirhora <hora> <minuto>`
- **Descrição**: Altera hora do servidor
- **Permissão**: Admin ou superior
- **Formato**: Hora (0-23), Minuto (0-59)
- **Exemplo**: 
  ```
  /settime 14 30  (14:30)
  /settime 0 0    (Meia-noite)
  ```

#### `/freezetime` ou `/congelarhora`
- **Descrição**: Congela passagem do tempo
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /freezetime
  ```

#### `/unfreezetime` ou `/descongelarhora`
- **Descrição**: Descongela passagem do tempo
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /unfreezetime
  ```

### 📊 Comandos de Servidor

#### `/dobackup` ou `/fazerbackup`
- **Descrição**: Cria backup do banco de dados imediatamente
- **Permissão**: Admin ou superior
- **Uso**: Antes de atualizar ou modificar
- **Exemplo**: 
  ```
  /dobackup
  ```

#### `/loadbackup <arquivo>` ou `/carregarbackup <arquivo>`
- **Descrição**: Carrega backup específico
- **Permissão**: Admin ou superior
- **Aviso**: Sobrescreve dados atuais!
- **Exemplo**: 
  ```
  /loadbackup backup_20240115_1430.db
  ```

#### `/announce <mensagem>` ou `/anunciar <mensagem>`
- **Descrição**: Envia anúncio grande para todos
- **Permissão**: Moderador ou superior
- **Exemplo**: 
  ```
  /announce Servidor será reiniciado em 10 minutos!
  ```

#### `/setmsg <mensagem>` ou `/definirmensagem <mensagem>`
- **Descrição**: Define mensagem de boas-vindas
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /setmsg Bem-vindo ao MTA DayZ Brasil!
  ```

#### `/restart` ou `/reiniciar`
- **Descrição**: Reinicia o servidor
- **Permissão**: Admin ou superior
- **Aviso**: Todos os jogadores serão desconectados!
- **Exemplo**: 
  ```
  /restart 30  (reinicia em 30 segundos)
  ```

#### `/stop` ou `/parar`
- **Descrição**: Para o servidor completamente
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /stop
  ```

### 🔍 Comandos de Debug

#### `/debugscript <nível>` ou `/depurarscript <nível>`
- **Descrição**: Ativa modo debug para ver erros de script
- **Permissão**: Admin ou superior
- **Níveis**:
  - `0` - Desativado
  - `1` - Apenas erros
  - `2` - Erros + avisos
  - `3` - Completo (verbose)
- **Exemplo**: 
  ```
  /debugscript 2
  ```

#### `/showfps` ou `/mostrarfps`
- **Descrição**: Mostra FPS permanentemente na tela
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /showfps
  ```

#### `/showping` ou `/mostrarping`
- **Descrição**: Mostra ping de todos os jogadores
- **Permissão**: Admin ou superior
- **Exemplo**: 
  ```
  /showping
  ```

#### `/performance` ou `/desempenho`
- **Descrição**: Mostra estatísticas de performance do servidor
- **Permissão**: Admin ou superior
- **Informações**:
  - CPU usage
  - RAM usage
  - Players online
  - Veículos spawneados
  - Zumbis ativos
- **Exemplo**: 
  ```
  /performance
  ```

---

## ⌨️ Atalhos de Teclado

### 🎮 Gameplay

| Tecla | Função | Descrição |
|-------|--------|-----------|
| **I** | Inventário | Abre/fecha o inventário |
| **N** | Menu | Mostra/oculta menu de interação |
| **M** / **F11** | Mapa | Abre/fecha mapa interativo |
| **TAB** | Placar | Mostra placar de jogadores (segure) |
| **T** | Chat | Abre chat para digitar mensagem |
| **X** | Chat Global | Abre chat global rápido |
| **U** | Chat Rádio | Abre chat de rádio (requer rádio) |
| **Y** | Chat Grupo | Abre chat de grupo |
| **E** / **Mouse 3** | Interação | Interage com objetos/itens próximos |
| **F** | Entrar Veículo | Entra/sai de veículo mais próximo |
| **G** | Entrar (Passageiro) | Entra como passageiro |
| **K** | Motor | Liga/desliga motor do veículo |
| **R** | Recarregar | Recarrega arma atual |
| **J** | Usar Item | Usa item selecionado no inventário |
| **L** | Lanterna | Liga/desliga lanterna (requer lanterna) |

### 🏃 Movimentação e Animações

| Tecla | Função | Descrição |
|-------|--------|-----------|
| **W/A/S/D** | Movimento | Movimentação padrão |
| **Shift** | Correr | Corre (gasta stamina) |
| **Ctrl** | Agachar | Abaixa o personagem |
| **C** | Deitar | Personagem fica deitado |
| **Espaço** | Pular | Pula obstáculos |
| **,** (Vírgula) | Mãos ao Alto | Levanta as mãos |
| **.** (Ponto) | Sentar | Personagem senta |
| **;** (Ponto-vírgula) | Deitar 2 | Outra animação de deitar |

### 🎯 Combate

| Tecla | Função | Descrição |
|-------|--------|-----------|
| **Botão Direito Mouse** | Mirar | Entra no modo de mira |
| **Botão Esquerdo Mouse** | Disparar | Atira com arma equipada |
| **Scroll Mouse** | Trocar Arma | Alterna entre armas equipadas |
| **R** | Recarregar | Recarrega arma |
| **1/2/3** | Slot Arma | Seleciona arma por slot |
| **V** | Mudança de Visão | Alterna entre primeira e terceira pessoa |

### 🗺️ Navegação

| Tecla | Função | Descrição |
|-------|--------|-----------|
| **M** / **F11** | Mapa | Abre mapa interativo |
| **Scroll Mouse** (no mapa) | Zoom | Zoom in/out no mapa |
| **Clique Mouse** (no mapa) | Marcar | Marca ponto no mapa |
| **Clique Direito** (no mapa) | Remover Marca | Remove marcação |

### 📷 Interface

| Tecla | Função | Descrição |
|-------|--------|-----------|
| **F1** | Sistema F1 | Abre ajuda do sistema |
| **F2** | Configurações | Abre configurações de login |
| **F8** | Console | Abre console do MTA (debug) |
| **F11** | Mapa | Abre mapa (alternativa ao M) |
| **F12** | Screenshot | Tira screenshot |
| **ESC** | Menu | Abre menu de pausa |

### 🛡️ Admin

| Tecla | Função | Descrição | Requisito |
|-------|--------|-----------|-----------|
| **O** | Painel Admin | Abre painel administrativo | Admin no ACL |
| **P** | Superman Mode | Ativa/desativa modo voo | Admin no ACL |

### 🎨 Customização

> **Nota**: Você pode alterar atalhos em Configurações → Controles

**Como Alterar Atalhos:**

1. Pressione **ESC** → **Options** → **Controls**
2. Procure pela função desejada
3. Clique na tecla atual
4. Pressione a nova tecla
5. Clique em **Save** (Salvar)

---

## 🖱️ Menu de Interação

Ao pressionar **Scroll Mouse** ou tecla **E** próximo a objetos/jogadores, abre menu contextual.

### Interações com Itens no Chão

- **Pegar Item** - Adiciona ao inventário (se houver espaço)
- **Examinar** - Mostra informações do item
- **Ignorar** - Fecha menu

### Interações com Veículos

#### Veículo Trancado
- **Tentar Abrir** - Requer chave ou lockpick
- **Examinar Estado** - Ver combustível, vida, peças

#### Veículo Destrancado
- **Entrar como Motorista** (F)
- **Entrar como Passageiro** (G)
- **Abrir Porta-malas** - Acessar armazenamento
- **Reabastecer** - Requer lata de combustível
- **Reparar** - Requer toolbox
- **Instalar Peça** - Instalar engine, tire, etc.
- **Remover Peça** - Desmontar peças para inventário
- **Examinar Estado**

### Interações com Jogadores

**Jogador Vivo:**
- **Examinar** - Ver nome, humanidade
- **Dar Item** - Transferir item do inventário
- **Convidar para Grupo**
- **Seguir** - Marca no mapa
- **Curar** (se tiver blood bag + jogador com sangue baixo)

**Jogador Morto:**
- **Saquear Corpo** - Pegar itens do corpo
- **Examinar Causa da Morte**

### Interações com Estruturas

#### Tenda (Tent)
- **Abrir Armazenamento** - Acessar inventário persistente
- **Desmontar** - Remover tenda e pegar de volta
- **Informações** - Ver dono, capacidade

#### Cerca de Arame (Wire Fence)
- **Examinar** - Ver vida da cerca
- **Desmontar** - Requer toolbox
- **Reparar** - Requer wire fencing

#### Fogueira
- **Cozinhar Carne** - Transforma carne crua em cozida
- **Esquentar** - Aumenta temperatura
- **Apagar** - Remove fogueira

### Interações com Animais

**Animal Vivo:**
- **Caçar** - Matar para coletar carne

**Animal Morto:**
- **Coletar Carne** - Adiciona raw meat ao inventário
- **Skinning** - Coletar pele (se implementado)

### Interações com Portas

- **Abrir** - Abre porta
- **Fechar** - Fecha porta
- **Trancar** - Requer chave
- **Destrancar** - Requer chave
- **Arrombar** - Requer lockpick ou força

---

## 🛡️ Painel de Administração

Acesso via tecla **O** (apenas para administradores com permissão no ACL).

### Interface Principal

O painel é dividido em **abas** na parte superior:

```
┌────────────────────────────────────────────────────┐
│ [Players] [Kick] [Ban] [Mute] [Message] [Give]    │
│ [Vehicle] [Weather] [Stats] [Superman]            │
├────────────────────────────────────────────────────┤
│                                                    │
│              [CONTEÚDO DA ABA]                     │
│                                                    │
│                                                    │
└────────────────────────────────────────────────────┘
```

### 📋 Aba: Players (Jogadores)

**Função**: Gerenciar jogadores online

**Elementos**:
- Lista de todos os jogadores conectados
- Informações por jogador:
  - Nome
  - ID
  - Ping
  - Tempo online
  - Localização (cidade/coordenadas)

**Ações Disponíveis**:
1. **Selecionar Jogador** - Clique para selecionar
2. **Teleportar Para** - Vai até o jogador
3. **Trazer Aqui** - Traz jogador até você
4. **Observar** - Modo espectador (ver tela do jogador)
5. **Congelar** - Impede movimento
6. **Ver Inventário** - Mostra itens do jogador
7. **Ver Stats** - Mostra estatísticas completas

**Filtros**:
- Por Nome
- Por Humanidade (Survivor/Bandit)
- Por Ping (Alto/Baixo)

### 🚫 Aba: Kick (Expulsar)

**Função**: Expulsar jogadores temporariamente

**Campos**:
1. **Jogador**: Seleção dropdown
2. **Motivo**: Campo de texto (obrigatório)
   - Exemplos:
     - "Linguagem ofensiva"
     - "Spam no chat"
     - "Não seguir orientações"

**Botões**:
- **Expulsar** - Confirma expulsão
- **Cancelar** - Cancela ação

**Log**:
- Mostra últimas 20 expulsões
- Formato: `[Data/Hora] Admin expulsou Jogador - Motivo`

### ⛔ Aba: Ban (Banir)

**Função**: Banir jogadores permanente ou temporariamente

**Campos**:
1. **Jogador**: Seleção dropdown ou campo de texto (nome/IP/serial)
2. **Tipo de Ban**:
   - Nome (pode criar nova conta)
   - IP (não pode conectar deste IP)
   - Serial (banimento de hardware)
3. **Duração**:
   - Dropdown com opções:
     - 1 hora
     - 6 horas
     - 1 dia
     - 3 dias
     - 7 dias
     - 30 dias
     - Permanente
   - Campo customizado: Inserir tempo manual
4. **Motivo**: Campo de texto (obrigatório)

**Botões**:
- **Banir** - Confirma banimento
- **Cancelar** - Cancela ação
- **Ver Lista de Bans** - Abre lista de banidos
- **Remover Ban** - Desbanir jogador

**Lista de Bans**:
```
┌────────────────────────────────────────────────────┐
│ Jogador       │ Tipo   │ Expira      │ Motivo      │
├────────────────────────────────────────────────────┤
│ João123       │ Serial │ Permanente  │ Hack        │
│ Pedro456      │ IP     │ 2024-01-20  │ Trapaça     │
│ Maria789      │ Nome   │ 2024-01-18  │ Ofensas     │
└────────────────────────────────────────────────────┘
```

**Ações na Lista**:
- **Desbanir** - Remove banimento
- **Editar** - Altera duração ou motivo
- **Detalhes** - Ver informações completas

### 🔇 Aba: Mute (Silenciar)

**Função**: Silenciar jogadores no chat

**Campos**:
1. **Jogador**: Seleção dropdown
2. **Canais**:
   - ☐ Chat Global
   - ☐ Chat Rádio
   - ☐ Chat de Grupo
   - ☐ Mensagens Privadas
   - ☑ **Todos os Canais** (marcar para silenciar tudo)
3. **Duração**:
   - 5 minutos
   - 15 minutos
   - 30 minutos
   - 1 hora
   - 3 horas
   - 6 horas
   - Permanente
4. **Motivo**: Campo de texto

**Botões**:
- **Silenciar** - Confirma silenciamento
- **Dessilenciar** - Remove silenciamento
- **Ver Lista de Silenciados**

**Lista de Silenciados**:
- Mostra jogadores atualmente silenciados
- Tempo restante de silenciamento
- Opção de remover antecipadamente

### 💬 Aba: Message (Mensagem)

**Função**: Enviar mensagens para jogadores

**Tipos de Mensagem**:

1. **Mensagem Privada**:
   - **Para**: Seleção de jogador
   - **Mensagem**: Campo de texto (max 200 caracteres)
   - **Botão**: Enviar

2. **Anúncio Global**:
   - **Mensagem**: Campo de texto
   - **Tipo**:
     - ℹ️ Informação (azul)
     - ⚠️ Aviso (amarelo)
     - ❌ Alerta (vermelho)
     - ✅ Sucesso (verde)
   - **Duração na Tela**: 5-60 segundos
   - **Botão**: Anunciar

3. **Mensagem de Boas-Vindas**:
   - **Texto**: Campo editável
   - **Preview**: Mostra como aparecerá
   - **Botão**: Salvar

**Pré-definidas** (Templates):
- "Servidor será reiniciado em X minutos"
- "Evento iniciando em X minutos"
- "Atualização aplicada com sucesso"
- "Manutenção programada"

### 🎁 Aba: Give (Dar)

**Função**: Dar itens para jogadores

**Interface**:

```
┌────────────────────────────────────────────────────┐
│ Jogador: [Dropdown ▼]                             │
├────────────────────────────────────────────────────┤
│ Categoria:                                         │
│  ○ Armas    ○ Munições   ○ Comida   ○ Médicos    │
│  ○ Ferramentas  ○ Equipamentos  ○ Veículos        │
├────────────────────────────────────────────────────┤
│ Item:                                              │
│  [Lista de itens da categoria selecionada]        │
├────────────────────────────────────────────────────┤
│ Quantidade: [1] [▲] [▼]                           │
├────────────────────────────────────────────────────┤
│ [ Dar Item ]  [ Dar Todos os Itens ]  [ Limpar ]  │
└────────────────────────────────────────────────────┘
```

**Categorias e Itens**:

**1. Armas**:
- Lista visual com imagens
- Informações: Dano, Alcance, Munição
- Seleção múltipla com Ctrl+Clique

**2. Munições**:
- Carregadores para cada arma
- Campo de quantidade (1-999)

**3. Comida**:
- Todos os itens alimentares
- Preview de efeito (+Fome, +Sede)

**4. Médicos**:
- Bandagens, kits médicos, etc.
- Preview de efeito

**5. Ferramentas**:
- GPS, Rádio, Toolbox, etc.
- Descrição de uso

**6. Equipamentos**:
- Sub-categorias:
  - Mochilas
  - Capacetes
  - Coletes
  - Roupas

**7. Veículos**:
- Spawna veículo próximo ao jogador
- Lista com imagens de veículos
- Opções:
  - Combustível: Vazio / 50% / Cheio
  - Estado: Danificado / Bom / Perfeito
  - Trancado: Sim / Não

**Ações Rápidas**:
- **Kit Iniciante** - Dar set básico (arma, munição, comida, bandagens)
- **Kit Sobrevivência** - Set intermediário
- **Kit Militar** - Set avançado
- **Limpar Inventário** - Remove todos os itens do jogador

### 🚗 Aba: Vehicle (Veículos)

**Função**: Gerenciar veículos do servidor

**Sub-abas**:

#### 🚙 Spawnar Veículo

**Interface**:
```
Tipo: [Dropdown com lista de veículos ▼]
      - MH6J (Helicóptero Civil)
      - AH6X Little Bird
      - HMMWV (Humvee)
      - Caminhonete
      - Motocicleta
      - URAL (Caminhão Militar)
      - Barco PBX
      - Bicicleta
      - Quadriciclo (ATV)
      - Moto Cross

Local: ○ Na minha frente
       ○ Próximo ao jogador: [Dropdown ▼]
       ○ Coordenadas: X[___] Y[___] Z[___]

Combustível: [████████░░] 80%
Estado: [██████████] 100%
Trancado: ☐ Sim

[Spawnar Veículo]
```

#### 📋 Lista de Veículos

**Tabela**:
```
┌───────────────────────────────────────────────────────────────┐
│ ID  │ Tipo         │ Dono      │ Combustível │ Vida │ Ações   │
├───────────────────────────────────────────────────────────────┤
│ 1   │ Humvee       │ João123   │ 45%         │ 85%  │ [Ações] │
│ 2   │ Motocicleta  │ -         │ 0%          │ 10%  │ [Ações] │
│ 3   │ Helicóptero  │ Pedro456  │ 100%        │ 100% │ [Ações] │
└───────────────────────────────────────────────────────────────┘
```

**Ações por Veículo**:
- **Ir Até** - Teleporta admin ao veículo
- **Trazer** - Teleporta veículo até admin
- **Reparar** - Conserta completamente
- **Reabastecer** - Enche tanque
- **Explodir** - Destrói veículo
- **Deletar** - Remove do jogo

**Filtros**:
- Por tipo de veículo
- Por dono
- Por estado (combustível/vida)
- Veículos abandonados (sem dono há X tempo)

**Ações em Massa**:
- **Deletar Todos Abandonados**
- **Reparar Todos**
- **Reabastecer Todos**

#### 🛠️ Manutenção

**Opções**:
- **Respawn Todos os Veículos** - Reseta posição inicial
- **Limpar Veículos Explodidos** - Remove destroços
- **Reset Spawns** - Recria spawns padrão

### 🌦️ Aba: Weather (Clima)

**Função**: Controlar clima e hora do servidor

**Interface**:

```
┌────────────────────────────────────────────────────┐
│ CLIMA                                              │
├────────────────────────────────────────────────────┤
│  ○ Ensolarado   ○ Nublado   ○ Chuvoso            │
│  ○ Tempestade   ○ Neblina   ○ Nevando            │
│                                                    │
│  [ Aplicar Clima ]                                │
├────────────────────────────────────────────────────┤
│ HORA DO DIA                                        │
├────────────────────────────────────────────────────┤
│  Hora: [14] : [30]                                │
│  [████████████████████░░░░░░] (14:30)             │
│                                                    │
│  [ Definir Hora ]                                 │
├────────────────────────────────────────────────────┤
│ VELOCIDADE DO TEMPO                                │
├────────────────────────────────────────────────────┤
│  ○ Parado (congelado)                             │
│  ○ Lento (1 min real = 5 min jogo)               │
│  ○ Normal (1 min real = 1 min jogo)              │
│  ○ Rápido (1 min real = 10 min jogo)             │
│                                                    │
│  [ Aplicar ]                                      │
├────────────────────────────────────────────────────┤
│ PRÉ-DEFINIÇÕES                                     │
├────────────────────────────────────────────────────┤
│  [ Manhã Ensolarada ]  [ Tarde Nublada ]          │
│  [ Noite Tempestade ]  [ Amanhecer Neblina ]      │
└────────────────────────────────────────────────────┘
```

**Efeitos dos Climas**:
- ☀️ **Ensolarado**: Melhor visibilidade, temperatura sobe
- ⛅ **Nublado**: Visibilidade normal, temperatura neutra
- 🌧️ **Chuvoso**: Visibilidade reduzida, temperatura cai
- ⛈️ **Tempestade**: Visibilidade muito reduzida, raios, temperatura cai muito
- 🌫️ **Neblina**: Visibilidade muito reduzida, temperatura normal
- ❄️ **Nevando**: Visibilidade reduzida, temperatura muito fria

### 📊 Aba: Stats (Estatísticas)

**Função**: Ver e editar estatísticas de jogadores

**Interface**:

```
┌────────────────────────────────────────────────────┐
│ Jogador: [João123 ▼]                              │
├────────────────────────────────────────────────────┤
│ VITAIS                                             │
│  Sangue:       [12000] / 12000    [Editar]        │
│  Fome:         [80] / 100         [Editar]        │
│  Sede:         [75] / 100         [Editar]        │
│  Temperatura:  [37]°C             [Editar]        │
├────────────────────────────────────────────────────┤
│ CONDIÇÕES                                          │
│  Sangramento:    ☐ Ativo                          │
│  Osso Quebrado:  ☐ Ativo                          │
│  Dor:            ☐ Ativo                          │
│  Hipotermia:     ☐ Ativo                          │
├────────────────────────────────────────────────────┤
│ ESTATÍSTICAS                                       │
│  Zumbis Mortos:      [156]        [Editar]        │
│  Jogadores Mortos:   [3]          [Editar]        │
│  Disparos na Cabeça: [45]         [Editar]        │
│  Bandits Mortos:     [2]          [Editar]        │
│  Mortes:             [8]          [Editar]        │
│  Tempo Jogado:       [24h 15m]                    │
│  Tempo Vivo:         [2h 34m]                     │
│  Humanidade:         [2800]       [Editar]        │
├────────────────────────────────────────────────────┤
│ AÇÕES                                              │
│  [ Curar Completamente ]  [ Matar ]               │
│  [ Reset Stats ]          [ Reset Personagem ]    │
└────────────────────────────────────────────────────┘
```

**Botão "Editar"**:
- Abre popup para alterar valor
- Validação de limites
- Confirmação necessária

**Botões de Ação**:
- **Curar Completamente**: Sangue=12000, Fome=100, Sede=100, Remove condições
- **Matar**: Mata jogador instantaneamente
- **Reset Stats**: Zera estatísticas mas mantém itens
- **Reset Personagem**: Zera tudo (novo personagem)

### 🦸 Superman Mode

**Função**: Modo "deus" para administradores

**Ativação**: Checkbox ou tecla **P**

**Habilidades**:
- ✈️ **Voar**: Espaço (subir), C (descer), WASD (direções)
- 👻 **Atravessar Objetos**: Noclip ativado
- 🛡️ **Invencibilidade**: Não recebe dano
- 👁️ **Invisibilidade**: Jogadores não te veem
- ⚡ **Velocidade**: Shift para voar mais rápido
- 🔫 **Munição Infinita**: Nunca acaba munição

**Interface no Superman**:
```
┌────────────────────────────────────────────────────┐
│ 🦸 SUPERMAN MODE ATIVO                            │
├────────────────────────────────────────────────────┤
│  ☑ Voar                                           │
│  ☑ Atravessar Objetos (Noclip)                    │
│  ☑ Invencibilidade                                │
│  ☑ Invisibilidade                                 │
│  ☑ Munição Infinita                               │
│                                                    │
│  Velocidade: [██████████] 100%                    │
│                                                    │
│  [ Desativar Superman ]                           │
└────────────────────────────────────────────────────┘
```

**Controles Superman**:
- **Espaço** - Subir
- **C** - Descer
- **W/A/S/D** - Mover (horizontal)
- **Shift** - Aumentar velocidade
- **Scroll Mouse** - Ajustar velocidade
- **P** ou **O** - Sair do Superman

---

## 📝 Lista Completa Organizada

### Comandos por Categoria

#### 💬 Comunicação
```
/globalchat <msg>    - Chat global
/radiochat <msg>     - Chat rádio
/teamchat <msg>      - Chat grupo
/pm <player> <msg>   - Mensagem privada
/me <ação>           - Expressar ação
/do <descrição>      - Descrever situação
```

#### 📊 Informações
```
/stats               - Ver estatísticas
/time                - Ver hora do servidor
/players             - Listar jogadores
/help                - Lista de comandos
/rules               - Regras do servidor
/ping                - Ver seu ping
/fps                 - Ver seus FPS
/coords              - Ver coordenadas
/balance             - Ver zKills
```

#### 🚗 Veículos
```
/vlock               - Trancar veículo
/vunlock             - Destrancar veículo
/vflip               - Virar veículo
/vrepair             - Reparar veículo
/vrefuel             - Reabastecer veículo
```

#### 👥 Social
```
/group create <nome> - Criar grupo
/group invite <player> - Convidar para grupo
/group accept        - Aceitar convite
/group leave         - Sair do grupo
/group kick <player> - Expulsar de grupo
/group list          - Listar membros
```

#### 🎮 Utilidade
```
/kill                - Suicidar
/unstuck             - Destravar personagem
/gps <canal>         - Definir canal GPS
/radio <canal>       - Alterar canal rádio
/shop                - Abrir loja
```

#### 🛡️ Admin - Moderação
```
/kick <player> [motivo] - Expulsar jogador
/kickall [motivo]    - Expulsar todos
/ban <player> <tempo> [motivo] - Banir jogador
/unban <player>      - Desbanir jogador
/mute <player> <tempo> [motivo] - Silenciar jogador
/unmute <player>     - Dessilenciar jogador
/freeze <player>     - Congelar jogador
/unfreeze <player>   - Descongelar jogador
/slap <player> [força] - Dar tapa em jogador
/slay <player>       - Matar jogador
```

#### 🛡️ Admin - Gerenciamento
```
/give <player> <item> <qtd> - Dar item
/givemoney <player> <qtd> - Dar zKills
/heal <player>       - Curar jogador
/spawn <player>      - Forçar respawn
/resetplayer <player> - Resetar personagem
```

#### 🛡️ Admin - Teleporte
```
/goto <player>       - Ir até jogador
/gethere <player>    - Trazer jogador
/sendto <p1> <p2>    - Enviar jogador
/warp <x> <y> <z>    - Teleportar coordenadas
/mark [nome]         - Marcar posição
/gotomark [nome]     - Ir para marca
```

#### 🛡️ Admin - Veículos
```
/spawnvehicle <id>   - Spawnar veículo
/delvehicle          - Deletar veículo
/delvehicles         - Deletar todos
/repairvehicle       - Reparar veículo
/flipvehicle         - Virar veículo
/refuelvehicle       - Reabastecer veículo
```

#### 🛡️ Admin - Ambiente
```
/setweather <id>     - Definir clima
/settime <h> <m>     - Definir hora
/freezetime          - Congelar hora
/unfreezetime        - Descongelar hora
```

#### 🛡️ Admin - Servidor
```
/dobackup            - Fazer backup
/loadbackup <arquivo> - Carregar backup
/announce <msg>      - Anúncio global
/setmsg <msg>        - Mensagem boas-vindas
/restart [segundos]  - Reiniciar servidor
/stop                - Parar servidor
/debugscript <nível> - Ativar debug
/performance         - Ver performance
```

### Atalhos por Categoria

#### 🎮 Gameplay Essencial
```
I     - Inventário
N     - Menu
M/F11 - Mapa
TAB   - Placar
E     - Interagir
F     - Entrar veículo
K     - Ligar motor
R     - Recarregar
```

#### 💬 Chat
```
T - Abrir chat
X - Chat global
U - Chat rádio
Y - Chat grupo
```

#### 🏃 Movimento
```
W/A/S/D - Movimento
Shift   - Correr
Ctrl    - Agachar
C       - Deitar
Espaço  - Pular
```

#### 🎯 Combate
```
Botão Direito Mouse - Mirar
Botão Esquerdo Mouse - Disparar
R - Recarregar
1/2/3 - Selecionar arma
```

#### 🛡️ Admin
```
O - Painel admin
P - Superman mode
```

---

## 💡 Dicas de Uso

### Para Jogadores

#### 1. **Organize seu Inventário**
- Mantenha munição junto com armas correspondentes
- Sempre tenha bandagens e comida de fácil acesso
- Use mochilas grandes para aumentar capacidade

#### 2. **Use Atalhos**
- Decore teclas principais: **I** (inventário), **M** (mapa), **E** (interação)
- Configure atalhos customizados para ações frequentes
- Use scroll do mouse para troca rápida de armas

#### 3. **Comunicação Eficiente**
- Use chat rádio para grupo (não revela posição)
- Chat global atrai atenção (use com cautela)
- Mensagens privadas para negociações

#### 4. **Sobrevivência**
- Verifique `/stats` regularmente
- Sempre tenha comida e água no inventário
- Bandagens são essenciais (sangramento mata rápido)

#### 5. **Veículos**
- Tranque veículos com `/vlock` (requer chave)
- Sempre tenha combustível extra
- Toolbox permite reparos rápidos

### Para Administradores

#### 1. **Moderação Eficaz**
- Sempre forneça motivo ao kickar/banir
- Use `/freeze` para investigar antes de punir
- Documente punições importantes

#### 2. **Gestão de Servidor**
- Faça backup com `/dobackup` antes de mudanças
- Use `/announce` para comunicados importantes
- Monitore performance com `/performance`

#### 3. **Suporte a Jogadores**
- Use `/goto` para ir até jogador com problema
- `/heal` e `/give` para compensar bugs
- `/unstuck` não funciona? Use teleporte

#### 4. **Eventos**
- Use `/setweather` para criar atmosfera
- `/settime` para eventos noturnos/diurnos
- Spawne veículos para eventos de corrida

#### 5. **Organização**
- Crie marcas com `/mark` para locais importantes
- Use Painel Admin (O) para gerenciamento visual
- Superman (P) para navegar rápido pelo mapa

### Boas Práticas

#### ✅ Faça

- ✅ Leia `/rules` antes de jogar
- ✅ Use chat com respeito
- ✅ Reporte bugs para admins
- ✅ Ajude novos jogadores
- ✅ Forme grupos para sobrevivência
- ✅ Economize munição
- ✅ Explore o mapa
- ✅ Participe de eventos

#### ❌ Não Faça

- ❌ Spam no chat
- ❌ Abuse de bugs/exploits
- ❌ Kill jogadores iniciantes sem motivo
- ❌ Abuse de comandos admin
- ❌ Distribua itens excessivamente (quebra economia)
- ❌ Use informações de admin para vantagem pessoal
- ❌ Ignore chamados de ajuda
- ❌ Desrespeite regras do servidor

---

## ❓ Perguntas Frequentes

### Jogadores

**Q: Como abro o inventário?**  
A: Pressione **I**.

**Q: Não consigo pegar item do chão, por quê?**  
A: Seu inventário está cheio. Use mochila maior ou descarte itens.

**Q: Como uso comida/medicamento?**  
A: Abra inventário (**I**), clique direito no item → "Usar" ou arraste para slot rápido e pressione **J**.

**Q: Estou sangrando, o que fazer?**  
A: Use **Bandage** (medicina1) rapidamente. Sangramento causa perda contínua de sangue.

**Q: Como entro em veículo?**  
A: Aproxime-se e pressione **F** (motorista) ou **G** (passageiro).

**Q: Veículo não liga, por quê?**  
A: Verifique se tem combustível, motor instalado e se não está muito danificado.

**Q: Como formo grupo?**  
A: `/group create NomeDoGrupo`, depois `/group invite NomeDoJogador`.

**Q: Perdi todos os itens ao morrer, é normal?**  
A: Sim, morte causa perda de inventário. Você pode voltar ao corpo para saquear.

**Q: Como ganho zKills (moeda)?**  
A: Matando zumbis, completando missões, vendendo itens na loja.

**Q: Onde fica a loja?**  
A: Veja marcação no mapa (**M**) ou pergunte no chat.

### Administradores

**Q: Acabei de ser promovido a admin, como acesso painel?**  
A: Pressione **O**. Se não abrir, verifique ACL (acl.xml).

**Q: Como dou item para jogador?**  
A: `/give NomeDoJogador IDdoItem Quantidade` ou use Painel Admin (**O**) → Aba Give.

**Q: Jogador está preso em objeto, como ajudo?**  
A: `/goto NomeDoJogador` para ir até ele, depois `/gethere NomeDoJogador` para trazê-lo.

**Q: Como faço backup?**  
A: `/dobackup` salva imediatamente. Configure backups automáticos no servidor.

**Q: Servidor está lagado, o que fazer?**  
A: 
1. Verifique `/performance`
2. Delete veículos abandonados (`/delvehicles`)
3. Reduza zumbis se necessário
4. Reinicie servidor se persistir

**Q: Como bano jogador permanentemente?**  
A: `/ban NomeDoJogador 0 Motivo` (0 = permanente).

**Q: Como vejo inventário de jogador?**  
A: Painel Admin (**O**) → Aba Players → Selecionar jogador → "Ver Inventário".

**Q: Superman mode não desativa, como faço?**  
A: Pressione **P** novamente ou reabra Painel Admin (**O**) e desmarque.

**Q: Como altero clima para evento?**  
A: Painel Admin (**O**) → Aba Weather → Selecionar clima → "Aplicar".

**Q: Preciso editar statística de jogador, como?**  
A: Painel Admin (**O**) → Aba Stats → Selecionar jogador → Editar valor desejado.

---

## 📚 Documentação Adicional

### Arquivos Relacionados

- 📄 [ANALISE_SISTEMA.md](ANALISE_SISTEMA.md) - Análise técnica completa do gamemode
- 📄 [INSTALACAO.md](INSTALACAO.md) - Guia completo de instalação e configuração
- 📄 [README.md](README.md) - Visão geral do projeto

### Links Úteis

- 🌐 **MTA:SA Wiki**: https://wiki.multitheftauto.com/
- 📚 **Scripting Documentation**: https://wiki.multitheftauto.com/wiki/Scripting_Introduction
- 💬 **Fórum MTA**: https://forum.multitheftauto.com/
- 🐛 **Reportar Bugs**: [Issues do GitHub]

### Suporte

**Para Jogadores**:
- Use `/help` no jogo
- Pergunte no chat ou em grupo
- Contate administradores
- Consulte fórum/Discord da comunidade

**Para Administradores**:
- Consulte documentação MTA oficial
- Veja logs de erro em `server.log`
- Use `/debugscript 3` para debug detalhado
- Peça ajuda no fórum MTA

---

## 📝 Notas Finais

### Créditos

**Desenvolvedores Principais**:
- Marwin
- L
- -ffs-Sniper
- kaasis
- Tekken

**Comunidade**:
- Beta testers
- Tradutores
- Contribuidores de documentação

### Atualizações

Esta documentação pode ser atualizada. Verifique versão mais recente no repositório:
- **Versão Atual**: 1.0.0
- **Última Atualização**: 2024

### Contribuir

Encontrou erro ou quer sugerir melhoria?
- Abra issue no GitHub
- Envie pull request
- Contate mantenedores

---

**Versão do Documento**: 1.0.0  
**Última Atualização**: 2024  
**Status**: ✅ Completo e Testado

---

*Documentação criada e mantida pela comunidade MTA DayZ Brasil* 🇧🇷

**Bom jogo e boa administração!** 🎮🛡️