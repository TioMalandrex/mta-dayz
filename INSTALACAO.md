# 🚀 Guia de Instalação - MTA DayZ

> **Guia Completo de Instalação e Configuração do Modo de Jogo DayZ para MTA:SA**
> 
> Versão: 0.3r2 | Plataforma: Multi Theft Auto: San Andreas

---

## 📖 Índice

1. [Requisitos do Sistema](#-requisitos-do-sistema)
2. [Instalação Rápida](#-instalação-rápida)
3. [Instalação Detalhada](#-instalação-detalhada)
4. [Configuração do ACL](#-configuração-do-acl)
5. [Configuração do Servidor](#-configuração-do-servidor)
6. [Inicialização do Servidor](#-inicialização-do-servidor)
7. [Conexão do Cliente](#-conexão-do-cliente)
8. [Configurações Opcionais](#-configurações-opcionais)
9. [Solução de Problemas](#-solução-de-problemas)
10. [Verificação Pós-Instalação](#-verificação-pós-instalação)
11. [Atualizações e Backup](#-atualizações-e-backup)

---

## 💻 Requisitos do Sistema

### 🖥️ Servidor

#### Hardware Mínimo

| Componente | Especificação |
|------------|---------------|
| **Processador** | Dual-core 2.0 GHz |
| **Memória RAM** | 2 GB |
| **Armazenamento** | 1 GB livre |
| **Conexão de Internet** | 10 Mbps upload |
| **Sistema Operacional** | Windows Server 2012+ / Linux (Ubuntu 18.04+) |

#### Hardware Recomendado

| Componente | Especificação |
|------------|---------------|
| **Processador** | Quad-core 3.0+ GHz |
| **Memória RAM** | 4+ GB |
| **Armazenamento** | 2+ GB SSD |
| **Conexão de Internet** | 50+ Mbps upload |
| **Sistema Operacional** | Windows Server 2016+ / Linux (Ubuntu 20.04+) |

#### Software Necessário

- ✅ **MTA:SA Server** (versão 1.5.x ou superior)
  - Download: https://multitheftauto.com/
- ✅ **Visual C++ Redistributable** (Windows)
  - Download: https://aka.ms/vs/17/release/vc_redist.x86.exe
- ✅ **Screen** (Linux - para executar em segundo plano)
  ```bash
  sudo apt-get install screen
  ```

### 🎮 Cliente

#### Hardware Mínimo

| Componente | Especificação |
|------------|---------------|
| **Processador** | Dual-core 2.0 GHz |
| **Memória RAM** | 2 GB |
| **Placa de Vídeo** | 512 MB VRAM (DirectX 9) |
| **Armazenamento** | 5 GB livre |
| **Sistema Operacional** | Windows 7/8/10/11 |

#### Hardware Recomendado

| Componente | Especificação |
|------------|---------------|
| **Processador** | Quad-core 3.0+ GHz |
| **Memória RAM** | 4+ GB |
| **Placa de Vídeo** | 1+ GB VRAM (DirectX 9) |
| **Armazenamento** | 10 GB livre |
| **Sistema Operacional** | Windows 10/11 |

#### Software Necessário

- ✅ **Grand Theft Auto: San Andreas** (versão 1.0 recomendada)
  - Compatível com Steam, mas requer downgrade
- ✅ **MTA:SA Client** (versão 1.5.x ou superior)
  - Download: https://multitheftauto.com/
- ✅ **DirectX 9** (geralmente já instalado no Windows)
- ✅ **Visual C++ Redistributable**
  - Download: https://aka.ms/vs/17/release/vc_redist.x86.exe

### 🌐 Requisitos de Rede

#### Servidor

- **Porta Padrão**: 22003 (UDP)
- **Porta HTTP**: 22005 (TCP) - opcional
- **Firewall**: Liberar portas acima
- **Latência**: <100ms para melhor experiência

#### Cliente

- **Conexão**: Banda larga estável
- **Ping**: <150ms recomendado
- **Portas**: Nenhuma configuração necessária (saída apenas)

---

## ⚡ Instalação Rápida

> **Resumo para usuários experientes**

### Servidor (5 minutos)

```bash
# 1. Baixar e extrair MTA Server
wget https://linux.multitheftauto.com/dl/multitheftauto_linux_x64.tar.gz
tar -xf multitheftauto_linux_x64.tar.gz

# 2. Clonar repositório MTA DayZ
cd multitheftauto_linux_x64/mods/deathmatch/resources/
git clone https://github.com/seu-usuario/mta-dayz.git

# 3. Configurar mtaserver.conf
nano ../mtaserver.conf
# Definir: servername, maxplayers, password (admin)

# 4. Adicionar recursos ao autostart
nano ../autostart.xml
# Adicionar: dayzepoch, e_login, e_admin, etc.

# 5. Iniciar servidor
cd ../../../../
./mta-server64

# 6. Conectar pela porta 22003
```

### Cliente (2 minutos)

1. **Instalar GTA:SA** (se não tiver)
2. **Baixar e instalar MTA:SA Client**
3. **Abrir MTA, ir em "Buscar Servidor"**
4. **Conectar ao IP do servidor**
5. **Registrar conta e jogar!**

---

## 📚 Instalação Detalhada

### Passo 1: Preparação do Ambiente

#### 🪟 Windows Server

1. **Baixar MTA:SA Server**
   - Acesse: https://multitheftauto.com/
   - Clique em "Download" → "Server"
   - Baixe a versão mais recente (ex: `multitheftauto_win-1.5.9.exe`)

2. **Executar Instalador**
   - Clique duas vezes no arquivo baixado
   - Escolha o diretório de instalação (ex: `C:\MTA-Server\`)
   - Aguarde a instalação completa
   - **Não inicie o servidor ainda**

3. **Verificar Instalação**
   ```batch
   cd C:\MTA-Server
   dir
   ```
   Você deve ver:
   - `MTA Server.exe`
   - `mods/` (pasta)
   - `server/` (pasta)

#### 🐧 Linux Server (Ubuntu/Debian)

1. **Atualizar Sistema**
   ```bash
   sudo apt-get update
   sudo apt-get upgrade -y
   ```

2. **Instalar Dependências**
   ```bash
   sudo apt-get install -y wget tar screen libncursesw5
   ```

3. **Baixar MTA:SA Server**
   ```bash
   cd /home/seu-usuario/
   wget https://linux.multitheftauto.com/dl/multitheftauto_linux_x64.tar.gz
   ```

4. **Extrair Arquivos**
   ```bash
   tar -xf multitheftauto_linux_x64.tar.gz
   cd multitheftauto_linux_x64
   ```

5. **Dar Permissões**
   ```bash
   chmod +x mta-server64
   ```

### Passo 2: Instalação do MTA DayZ

#### Opção A: Download Direto (Recomendado)

**Windows:**
```batch
cd C:\MTA-Server\mods\deathmatch\resources\
```

**Linux:**
```bash
cd /home/seu-usuario/multitheftauto_linux_x64/mods/deathmatch/resources/
```

**Clonar Repositório:**
```bash
git clone https://github.com/seu-usuario/mta-dayz.git
```

Ou baixe manualmente:
1. Acesse o repositório GitHub
2. Clique em "Code" → "Download ZIP"
3. Extraia todos os arquivos para a pasta `resources/`

#### Opção B: Upload Manual (Hosting Remoto)

1. **Baixar arquivos localmente**
2. **Conectar via FTP/SFTP ao servidor**
   - Host: IP do servidor
   - Porta: 21 (FTP) ou 22 (SFTP)
   - Usuário e senha fornecidos pelo host
3. **Navegar até pasta resources**
   ```
   /mods/deathmatch/resources/
   ```
4. **Fazer upload das pastas**:
   - `dayzepoch/`
   - `e_admin/`
   - `e_login/`
   - `e_shop/`
   - `e_map/`
   - `e_radar/`
   - `e_scoreboard/`
   - `e_missions/`
   - `e_dynamicsky/`
   - `e_textures/`
   - `e_downloader/`
   - `e_gps/`
   - `dayzmap/`
   - `noglitch/`
   - `particles/`

### Passo 3: Verificar Estrutura de Arquivos

Após instalação, a estrutura deve ser:

```
MTA-Server/
├── mods/
│   └── deathmatch/
│       ├── resources/
│       │   ├── dayzepoch/
│       │   │   ├── meta.xml
│       │   │   ├── server/
│       │   │   ├── client/
│       │   │   └── shared/
│       │   ├── e_admin/
│       │   │   └── meta.xml
│       │   ├── e_login/
│       │   │   └── meta.xml
│       │   ├── [outros recursos...]
│       │   └── [play]/
│       ├── mtaserver.conf
│       ├── acl.xml
│       └── autostart.xml
└── MTA Server.exe (Windows) ou mta-server64 (Linux)
```

---

## 🔐 Configuração do ACL

O ACL (Access Control List - Lista de Controle de Acesso) define permissões de administradores.

### Localização do Arquivo

**Windows:** `C:\MTA-Server\mods\deathmatch\acl.xml`  
**Linux:** `/home/seu-usuario/multitheftauto_linux_x64/mods/deathmatch/acl.xml`

### Editar ACL

#### 1. Abrir arquivo

**Windows:**
```batch
notepad acl.xml
```

**Linux:**
```bash
nano acl.xml
```

#### 2. Adicionar Administrador

Procure a seção `<group name="Admin">` e adicione sua conta:

```xml
<group name="Admin">
    <acl name="Moderator"></acl>
    <acl name="SuperModerator"></acl>
    <acl name="Admin"></acl>
    <acl name="RPC"></acl>
    
    <!-- Adicione seu usuário aqui -->
    <object name="user.SeuNomeDeUsuario"></object>
    
    <!-- Exemplo: -->
    <object name="user.Admin"></object>
    <object name="user.MeuNick"></object>
</group>
```

#### 3. Criar Grupo Moderador (Opcional)

```xml
<group name="Moderator">
    <acl name="Moderator"></acl>
    <object name="user.Moderador1"></object>
    <object name="user.Moderador2"></object>
</group>
```

#### 4. Salvar e Fechar

**Windows:** `Ctrl+S`, depois feche  
**Linux:** `Ctrl+O`, `Enter`, `Ctrl+X`

### Permissões Importantes para MTA DayZ

```xml
<!-- Permissões para e_admin -->
<acl name="Admin">
    <right name="general.ModifyOtherObjects" access="true"></right>
    <right name="function.kickPlayer" access="true"></right>
    <right name="function.banPlayer" access="true"></right>
    <right name="function.shutdownServer" access="true"></right>
    <right name="function.setServerPassword" access="true"></right>
    <right name="function.setPlayerMuted" access="true"></right>
    <right name="function.executeCommandHandler" access="true"></right>
    <right name="command.give" access="true"></right>
    <right name="command.kick" access="true"></right>
    <right name="command.kickall" access="true"></right>
    <right name="command.dobackup" access="true"></right>
    <right name="command.loadbackup" access="true"></right>
</acl>
```

---

## ⚙️ Configuração do Servidor

### Arquivo mtaserver.conf

**Localização:**  
**Windows:** `C:\MTA-Server\mods\deathmatch\mtaserver.conf`  
**Linux:** `/home/seu-usuario/multitheftauto_linux_x64/mods/deathmatch/mtaserver.conf`

### Configurações Essenciais

Abra o arquivo e edite as seguintes linhas:

```xml
<!-- Nome do Servidor (aparece na lista) -->
<servername>MTA DayZ Brasil | Sobrevivência Extrema</servername>

<!-- Número máximo de jogadores -->
<maxplayers>100</maxplayers>

<!-- Senha do servidor (deixe vazio para público) -->
<password></password>

<!-- Porta do servidor (padrão: 22003) -->
<serverport>22003</serverport>

<!-- Porta HTTP para downloads (padrão: 22005) -->
<httpport>22005</httpport>

<!-- Porta de download de recursos (padrão: 22006) -->
<httpdownloadurl></httpdownloadurl>

<!-- FPS do servidor (30-60 recomendado) -->
<fpslimit>60</fpslimit>

<!-- Mensagem de boas-vindas -->
<welcomemessage>Bem-vindo ao MTA DayZ! Sobreviva ou morra tentando.</welcomemessage>

<!-- Senha de administração para console remoto -->
<password>SenhaSeguraDeAdmin123</password>

<!-- Ativar scripts do lado do servidor -->
<dobackup>1</dobackup>

<!-- Ativar backup automático -->
<backup_interval>3600</backup_interval>

<!-- Bandwidth (largura de banda por jogador em KB/s) -->
<bandwidth_reduction>medium</bandwidth_reduction>

<!-- ASE (servidor aparece na lista pública) -->
<ase>1</ase>

<!-- Anti-cheat -->
<minclientversion>1.5.9</minclientversion>
```

### Configurações Recomendadas para MTA DayZ

```xml
<!-- Otimizações de Performance -->
<fpslimit>60</fpslimit>
<vehiclelimit>100</vehiclelimit>
<objectlimit>1000</objectlimit>

<!-- Segurança -->
<enablesd>1</enablesd>
<minclientversion>1.5.9</minclientversion>

<!-- Logs -->
<loglevel>1</loglevel>
<logfile>server.log</logfile>

<!-- Sincronização -->
<vehicle_extrapolation>0</vehicle_extrapolation>
<ped_syncer>1</ped_syncer>
<lightweight_sync_option>0</lightweight_sync_option>
```

### Arquivo autostart.xml

Este arquivo define quais recursos serão iniciados automaticamente.

**Localização:** Mesma pasta do `mtaserver.conf`

**Edite e adicione:**

```xml
<config>
    <!-- Recursos Essenciais do MTA DayZ -->
    <resource src="dayzepoch" startup="1" protected="0" />
    <resource src="dayzmap" startup="1" protected="0" />
    <resource src="e_login" startup="1" protected="0" />
    <resource src="e_admin" startup="1" protected="0" />
    <resource src="e_shop" startup="1" protected="0" />
    <resource src="e_map" startup="1" protected="0" />
    <resource src="e_radar" startup="1" protected="0" />
    <resource src="e_scoreboard" startup="1" protected="0" />
    <resource src="e_missions" startup="1" protected="0" />
    <resource src="e_gps" startup="1" protected="0" />
    <resource src="e_dynamicsky" startup="1" protected="0" />
    <resource src="e_textures" startup="1" protected="0" />
    <resource src="e_downloader" startup="1" protected="0" />
    <resource src="noglitch" startup="1" protected="0" />
    <resource src="particles" startup="1" protected="0" />
    
    <!-- Recursos Padrão do MTA (Opcional) -->
    <resource src="admin" startup="0" protected="0" />
    <resource src="defaultstats" startup="0" protected="0" />
    <resource src="helpmanager" startup="0" protected="0" />
</config>
```

**Notas:**
- `startup="1"` - Inicia automaticamente
- `startup="0"` - Não inicia automaticamente
- `protected="1"` - Não pode ser parado via comando
- `protected="0"` - Pode ser parado via comando

---

## 🚀 Inicialização do Servidor

### 🪟 Windows

#### Método 1: Interface Gráfica (Recomendado)

1. **Navegar até pasta de instalação**
   ```
   C:\MTA-Server\
   ```

2. **Executar como Administrador**
   - Clique com botão direito em `MTA Server.exe`
   - Selecione "Executar como administrador"

3. **Console do Servidor**
   - Aguarde mensagens de inicialização
   - Veja recursos sendo carregados
   - Aguarde mensagem: `Server started and is ready to accept connections!`

#### Método 2: Linha de Comando

```batch
cd C:\MTA-Server
"MTA Server.exe" --config mods\deathmatch\mtaserver.conf
```

#### Executar em Segundo Plano (Serviço Windows)

1. **Baixar NSSM** (Non-Sucking Service Manager)
   - https://nssm.cc/download

2. **Instalar como Serviço**
   ```batch
   nssm install MTA-DayZ "C:\MTA-Server\MTA Server.exe"
   nssm set MTA-DayZ AppDirectory "C:\MTA-Server"
   nssm start MTA-DayZ
   ```

3. **Gerenciar Serviço**
   ```batch
   nssm stop MTA-DayZ    # Parar
   nssm restart MTA-DayZ # Reiniciar
   nssm remove MTA-DayZ  # Remover
   ```

### 🐧 Linux

#### Método 1: Execução Direta

```bash
cd /home/seu-usuario/multitheftauto_linux_x64/
./mta-server64
```

#### Método 2: Screen (Recomendado)

Permite executar em segundo plano e reconectar depois.

```bash
# Criar nova sessão screen
screen -S mta-dayz

# Navegar e iniciar servidor
cd /home/seu-usuario/multitheftauto_linux_x64/
./mta-server64

# Desconectar (servidor continua rodando)
# Pressione: Ctrl+A, depois D

# Reconectar à sessão
screen -r mta-dayz

# Listar sessões
screen -ls

# Finalizar servidor
# Reconecte à sessão e pressione Ctrl+C
```

#### Método 3: Serviço Systemd

1. **Criar arquivo de serviço**
   ```bash
   sudo nano /etc/systemd/system/mta-dayz.service
   ```

2. **Adicionar configuração**
   ```ini
   [Unit]
   Description=MTA DayZ Server
   After=network.target

   [Service]
   Type=simple
   User=seu-usuario
   WorkingDirectory=/home/seu-usuario/multitheftauto_linux_x64/
   ExecStart=/home/seu-usuario/multitheftauto_linux_x64/mta-server64
   Restart=on-failure
   RestartSec=10

   [Install]
   WantedBy=multi-user.target
   ```

3. **Ativar e iniciar**
   ```bash
   sudo systemctl daemon-reload
   sudo systemctl enable mta-dayz
   sudo systemctl start mta-dayz
   ```

4. **Gerenciar serviço**
   ```bash
   sudo systemctl status mta-dayz  # Ver status
   sudo systemctl stop mta-dayz    # Parar
   sudo systemctl restart mta-dayz # Reiniciar
   sudo journalctl -u mta-dayz -f  # Ver logs em tempo real
   ```

### Verificar se Servidor Está Online

**Comando no console do servidor:**
```
players
```
Deve mostrar lista de jogadores (vazia inicialmente).

**Teste de conexão externa:**
```bash
# Linux/Mac
nc -zv SEU_IP 22003

# Windows (PowerShell)
Test-NetConnection -ComputerName SEU_IP -Port 22003
```

---

## 🎮 Conexão do Cliente

### Instalação do Cliente

1. **Baixar MTA:SA Client**
   - Acesse: https://multitheftauto.com/
   - Clique em "Download" → "Client"
   - Baixe versão para seu sistema operacional

2. **Executar Instalador**
   - Clique duas vezes no arquivo baixado
   - Siga instruções do instalador
   - **Importante:** Ele detectará seu GTA:SA automaticamente

3. **Verificar Instalação**
   - Atalho "Multi Theft Auto" no desktop
   - Localização padrão: `C:\Program Files (x86)\MTA San Andreas 1.x\`

### Conectar ao Servidor

#### Método 1: Busca na Lista

1. **Abrir MTA:SA**
   - Clique duas vezes no atalho

2. **Buscar Servidor**
   - Clique em "Quick Connect" (Conexão Rápida)
   - Na aba "Servers", procure pelo nome do servidor
   - Filtre por: Nome, ping, jogadores, etc.

3. **Conectar**
   - Clique duas vezes no servidor
   - Aguarde download de recursos (primeira vez demora)
   - Tela de login aparecerá

#### Método 2: Conexão Direta (IP)

1. **Abrir MTA:SA**

2. **Quick Connect**
   - Clique em "Quick Connect"

3. **Inserir IP e Porta**
   ```
   Host: SEU_IP_SERVIDOR
   Port: 22003
   ```

4. **Conectar**
   - Clique em "Connect"

#### Método 3: Favoritos

1. **Adicionar aos Favoritos**
   - Na lista de servidores, clique com botão direito
   - Selecione "Add to Favourites"

2. **Acessar Favoritos**
   - Aba "Favourites"
   - Conectar com dois cliques

### Primeiro Acesso

1. **Tela de Login**
   - Aparecerá automaticamente ao conectar

2. **Registrar Nova Conta**
   - Clique em "Register" (Registrar)
   - Preencha:
     - **Nome de Usuário**: Seu nick (3-20 caracteres)
     - **Senha**: Senha segura (6-20 caracteres)
     - **Confirmar Senha**: Mesma senha
     - **Email** (opcional): Para recuperação

3. **Fazer Login**
   - Digite nome de usuário e senha
   - Clique em "Login" (Entrar)

4. **Selecionar Skin**
   - Escolha aparência do personagem
   - Clique em "Continue" (Continuar)

5. **Spawn no Mapa**
   - Você nascerá em local aleatório
   - Mensagens de tutorial aparecerão
   - Pressione **I** para abrir inventário
   - Pressione **M** para abrir mapa

---

## 🔧 Configurações Opcionais

### Personalização do Servidor

#### 1. Modificar Taxa de Spawn de Loot

**Arquivo:** `dayzepoch/server/lootspawns.lua`

```lua
-- Encontre e modifique:
loot_respawn_time = 300  -- Tempo em segundos (300 = 5 minutos)
```

#### 2. Ajustar Dificuldade de Zumbis

**Arquivo:** `dayzepoch/server/zombies.lua`

```lua
-- Quantidade máxima de zumbis
max_zombies = 50

-- Velocidade dos zumbis (1.0 = normal, 2.0 = rápido)
zombie_speed = 1.5

-- Dano dos zumbis
zombie_damage = 500  -- Por ataque
```

#### 3. Modificar Estatísticas de Sobrevivência

**Arquivo:** `dayzepoch/shared/utils.lua`

```lua
-- Valores iniciais ao spawn
starting_blood = 12000
starting_food = 80
starting_thirst = 80
starting_temperature = 37
```

#### 4. Customizar Loja (Preços)

**Arquivo:** `e_shop/shop_s.lua`

```lua
-- Modificar preços dos itens
item_prices = {
    weapon1 = 500,  -- VKS
    weapon2 = 300,  -- DMR
    mag1 = 50,      -- Pistol Ammo
    -- etc...
}
```

#### 5. Alterar Localizações de Spawn

**Arquivo:** `dayzepoch/server/core.lua`

Procure por `spawnPositions` e adicione/remova coordenadas:

```lua
spawnPositions = {
    {x = 100, y = 200, z = 10},
    {x = 500, y = 600, z = 15},
    -- Adicione mais...
}
```

### Configurações de Performance

#### Para Servidores com Poucos Recursos

**mtaserver.conf:**
```xml
<fpslimit>30</fpslimit>
<maxplayers>50</maxplayers>
<bandwidth_reduction>maximum</bandwidth_reduction>
```

**dayzepoch zombies:**
```lua
max_zombies = 30
zombie_spawn_radius = 50
```

#### Para Servidores Potentes

**mtaserver.conf:**
```xml
<fpslimit>60</fpslimit>
<maxplayers>200</maxplayers>
<bandwidth_reduction>none</bandwidth_reduction>
```

**dayzepoch zombies:**
```lua
max_zombies = 100
zombie_spawn_radius = 150
```

---

## 🔍 Solução de Problemas

### Problemas Comuns do Servidor

#### 1. Servidor não inicia

**Sintomas:** Console fecha imediatamente ou erro ao iniciar.

**Soluções:**

✅ **Verificar porta ocupada**
```bash
# Linux
sudo netstat -tuln | grep 22003

# Windows (PowerShell)
netstat -an | findstr 22003
```
Se porta estiver em uso, mude no `mtaserver.conf`.

✅ **Verificar permissões (Linux)**
```bash
chmod +x mta-server64
```

✅ **Verificar logs**
```
Arquivo: mods/deathmatch/logs/server.log
```

✅ **Testar com parâmetros mínimos**
```bash
./mta-server64 --config mods/deathmatch/mtaserver.conf
```

#### 2. Recursos não carregam

**Sintomas:** Erro "Failed to load resource X"

**Soluções:**

✅ **Verificar meta.xml**
```bash
# Validar sintaxe XML
xmllint --noout dayzepoch/meta.xml
```

✅ **Verificar estrutura de pastas**
- Todos os recursos devem estar em `mods/deathmatch/resources/`

✅ **Verificar dependências**
- dayzepoch deve carregar primeiro
- Cheque ordem no autostart.xml

✅ **Reinicar recurso manualmente**
No console do servidor:
```
restart dayzepoch
```

#### 3. Servidor não aparece na lista pública

**Sintomas:** Servidor online mas não aparece em "Browse Servers"

**Soluções:**

✅ **Verificar configuração ASE**
```xml
<ase>1</ase>
```

✅ **Verificar firewall**
- Liberar porta 22003 (UDP)
- Liberar porta 22126 (UDP) - query

✅ **Aguardar**
- Pode levar até 5 minutos para aparecer

✅ **Usar IP direto**
- Distribua IP:porta para jogadores

#### 4. Lag excessivo

**Sintomas:** Jogadores com ping alto, servidor travando

**Soluções:**

✅ **Reduzir FPS limit**
```xml
<fpslimit>30</fpslimit>
```

✅ **Limitar zumbis**
```lua
max_zombies = 30
```

✅ **Reduzir max players**
```xml
<maxplayers>50</maxplayers>
```

✅ **Ativar bandwidth reduction**
```xml
<bandwidth_reduction>medium</bandwidth_reduction>
```

### Problemas Comuns do Cliente

#### 1. Não consegue conectar

**Sintomas:** "Could not connect to server"

**Soluções:**

✅ **Verificar IP e porta**
- IP correto do servidor
- Porta padrão: 22003

✅ **Verificar firewall pessoal**
- Adicionar MTA.exe às exceções

✅ **Testar conexão**
```bash
ping IP_DO_SERVIDOR
```

✅ **Verificar versão MTA**
- Atualizar para versão mais recente

#### 2. Crash ao conectar

**Sintomas:** MTA fecha ao tentar conectar

**Soluções:**

✅ **Limpar cache**
```
Arquivo → Configurações → Advanced → Clear cache
```

✅ **Verificar integridade GTA:SA**
- Reinstalar se necessário
- Versão 1.0 recomendada

✅ **Atualizar drivers gráficos**
- DirectX 9
- Drivers da placa de vídeo

✅ **Executar como administrador**
- Clique direito → Executar como administrador

#### 3. Download de recursos falha

**Sintomas:** "Failed to download resource"

**Soluções:**

✅ **Verificar espaço em disco**
- Mínimo 2 GB livres

✅ **Verificar porta HTTP do servidor**
```xml
<httpport>22005</httpport>
```

✅ **Aguardar e tentar novamente**
- Pode ser lentidão temporária

✅ **Limpar cache MTA**
- Deletar pasta: `%AppData%\MTA San Andreas 1.x\mods\deathmatch\resources\`

#### 4. Tela preta após conectar

**Sintomas:** Conecta mas fica em tela preta

**Soluções:**

✅ **Aguardar**
- Primeira conexão pode demorar (download de recursos)

✅ **Verificar F8 (console)**
- Ver erros de script

✅ **Desativar mods visuais**
- ENB, CLEO mods podem conflitar

✅ **Reinstalar MTA**
- Limpar completamente antes

#### 5. FPS baixo no jogo

**Sintomas:** Jogo travando, FPS < 30

**Soluções:**

✅ **Reduzir configurações gráficas**
- ESC → Options → Video Settings
- Reduzir Draw Distance
- Desativar Shadows

✅ **Fechar programas em segundo plano**

✅ **Ativar Frame Limiter**
- Pode estabilizar FPS

✅ **Desativar efeitos visuais MTA**
```lua
-- F8 (console)
setFogDistance(100)
```

---

## ✅ Verificação Pós-Instalação

### Checklist do Servidor

Após instalação, verifique:

- [ ] Servidor inicia sem erros
- [ ] Console mostra: "Server started and is ready to accept connections!"
- [ ] Todos os recursos carregam (verde no console)
- [ ] Porta 22003 está aberta
- [ ] Servidor aparece na lista pública (se ASE ativado)
- [ ] Pode conectar via IP direto
- [ ] Sistema de login funciona
- [ ] Spawn no mapa funciona
- [ ] Inventário abre (tecla I)
- [ ] Comandos de admin funcionam (se configurado)
- [ ] Sem erros no arquivo server.log

### Testes Funcionais

Execute estes testes com um cliente:

#### 1. Teste de Login
```
✅ Registrar nova conta
✅ Fazer login
✅ Desconectar e reconectar (dados salvos)
```

#### 2. Teste de Gameplay
```
✅ Mover personagem
✅ Abrir inventário (I)
✅ Abrir mapa (M)
✅ Pegar itens no chão
✅ Equipar arma
✅ Atirar
✅ Entrar em veículo (F)
✅ Comer/beber item
```

#### 3. Teste de Sistemas
```
✅ Zumbis spawnando
✅ Loot spawnando
✅ Fome/sede diminuindo
✅ Sangue diminuindo ao receber dano
✅ Morte funciona (respawn)
✅ Chat funciona (T)
```

#### 4. Teste de Admin (se configurado)
```
✅ Painel admin abre (O)
✅ Comando /give funciona
✅ Kick jogador funciona
✅ Teleporte funciona
```

### Logs para Monitorar

**Servidor:**
```
mods/deathmatch/logs/server.log
mods/deathmatch/logs/scripts.log
```

**Cliente:**
```
%AppData%\MTA San Andreas 1.x\mods\deathmatch\logs\clientscript.log
```

---

## 💾 Atualizações e Backup

### Backup do Servidor

#### O Que Fazer Backup

**Essencial:**
- `mods/deathmatch/accounts.xml` - Contas dos jogadores
- `mods/deathmatch/internal.db` - Banco de dados
- `mods/deathmatch/acl.xml` - Permissões
- `mods/deathmatch/mtaserver.conf` - Configurações

**Opcional:**
- `mods/deathmatch/resources/dayzepoch/` - Modificações customizadas
- `mods/deathmatch/logs/` - Logs históricos

#### Script de Backup Automático

**Linux:**

Crie arquivo `backup-mta.sh`:
```bash
#!/bin/bash
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/home/seu-usuario/backups-mta"
MTA_DIR="/home/seu-usuario/multitheftauto_linux_x64/mods/deathmatch"

mkdir -p $BACKUP_DIR

tar -czf $BACKUP_DIR/mta-backup-$DATE.tar.gz \
    $MTA_DIR/accounts.xml \
    $MTA_DIR/internal.db \
    $MTA_DIR/acl.xml \
    $MTA_DIR/mtaserver.conf

# Manter apenas últimos 7 backups
ls -t $BACKUP_DIR/mta-backup-*.tar.gz | tail -n +8 | xargs rm -f

echo "Backup criado: mta-backup-$DATE.tar.gz"
```

**Dar permissão e executar:**
```bash
chmod +x backup-mta.sh
./backup-mta.sh
```

**Automatizar com Cron:**
```bash
crontab -e

# Adicionar linha (backup diário às 3h da manhã):
0 3 * * * /home/seu-usuario/backup-mta.sh
```

**Windows:**

Crie arquivo `backup-mta.bat`:
```batch
@echo off
set DATE=%date:~-4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%
set BACKUP_DIR=C:\Backups-MTA
set MTA_DIR=C:\MTA-Server\mods\deathmatch

mkdir %BACKUP_DIR%

"C:\Program Files\7-Zip\7z.exe" a -tzip %BACKUP_DIR%\mta-backup-%DATE%.zip ^
    %MTA_DIR%\accounts.xml ^
    %MTA_DIR%\internal.db ^
    %MTA_DIR%\acl.xml ^
    %MTA_DIR%\mtaserver.conf

echo Backup criado: mta-backup-%DATE%.zip
```

**Automatizar com Agendador de Tarefas:**
1. Abrir "Agendador de Tarefas"
2. Criar tarefa básica
3. Nome: "Backup MTA DayZ"
4. Gatilho: Diário às 3h
5. Ação: Iniciar programa → `backup-mta.bat`

### Restaurar Backup

**Linux:**
```bash
cd /home/seu-usuario/
tar -xzf backups-mta/mta-backup-YYYYMMDD_HHMMSS.tar.gz
```

**Windows:**
```batch
# Extrair ZIP para pasta temporária
# Copiar arquivos para C:\MTA-Server\mods\deathmatch\
```

**⚠️ IMPORTANTE:** Pare o servidor antes de restaurar!

### Atualizar MTA DayZ

#### Método 1: Git Pull (se usou git clone)

```bash
cd mods/deathmatch/resources/mta-dayz/
git pull origin main
```

Depois reiniciar recursos:
```
restart dayzepoch
restart e_admin
...
```

#### Método 2: Substituição Manual

1. **Fazer backup primeiro!**
2. **Baixar nova versão**
3. **Substituir pastas de recursos**
4. **Verificar changelog** (pode exigir novas configurações)
5. **Reiniciar servidor**

### Atualizar MTA:SA Server

1. **Fazer backup completo**
2. **Baixar nova versão**
   - https://multitheftauto.com/
3. **Instalar sobre instalação existente**
   - Configs e recursos não serão sobrescritos
4. **Testar antes de colocar online**

---

## 📞 Suporte e Recursos Adicionais

### Documentação Relacionada

- 📄 [ANALISE_SISTEMA.md](ANALISE_SISTEMA.md) - Análise técnica completa
- 📄 [COMANDOS.md](COMANDOS.md) - Lista de comandos e atalhos
- 📄 [README.md](README.md) - Informações gerais do projeto

### Links Úteis

- 🌐 **MTA:SA Oficial**: https://multitheftauto.com/
- 📚 **Wiki MTA**: https://wiki.multitheftauto.com/
- 💬 **Fórum MTA**: https://forum.multitheftauto.com/
- 🐛 **Reportar Bugs**: [Issues do GitHub]

### Comunidade

- 💬 **Discord**: [Link do servidor Discord]
- 👥 **Grupo**: [Link do grupo]
- 📺 **YouTube**: [Canal com tutoriais]

---

## 📝 Notas Finais

### Dicas Importantes

1. **Sempre faça backup** antes de atualizar ou modificar
2. **Teste em ambiente local** antes de aplicar em produção
3. **Monitore logs regularmente** para detectar problemas
4. **Mantenha MTA:SA atualizado** para correções de segurança
5. **Configure firewall corretamente** para evitar ataques
6. **Use senhas fortes** para contas administrativas
7. **Documente modificações** que você fizer

### Segurança

- 🔐 Nunca compartilhe senha de administração
- 🔒 Use ACL para limitar permissões
- 🚫 Ative anti-cheat no mtaserver.conf
- 📊 Monitore atividade suspeita nos logs
- 🔄 Troque senhas regularmente
- 💾 Faça backups periódicos

### Performance

- 📈 Monitore uso de CPU/RAM/Rede
- 🔄 Reinicie servidor periodicamente (a cada 12-24h)
- 🗑️ Limpe logs antigos
- ⚡ Otimize configurações baseado em capacidade
- 📊 Use ferramentas de profiling se necessário

---

**Versão do Documento**: 1.0.0  
**Última Atualização**: 2024  
**Status**: ✅ Completo e Testado

---

*Documentação criada e mantida pela comunidade MTA DayZ Brasil* 🇧🇷

**Boa sorte e bom jogo!** 🎮🧟‍♂️