# 🧟 MTA DayZ - Modo de Jogo de Sobrevivência

> **Modo de jogo completo de DayZ para Multi Theft Auto: San Andreas**
> 
> Versão 0.3r2 | Autores: Marwin, L, -ffs-Sniper, kaasis, Tekken

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![MTA Version](https://img.shields.io/badge/MTA-1.5%2B-green.svg)](https://multitheftauto.com/)
[![Language](https://img.shields.io/badge/language-Lua-purple.svg)](https://www.lua.org/)

---

## 📖 Índice

1. [Sobre](#-sobre)
2. [Características](#-características)
3. [Instalação Rápida (Windows)](#-instalação-rápida-windows)
4. [Instalação Detalhada (Windows)](#-instalação-detalhada-windows)
5. [Instalação Linux](#-instalação-linux)
6. [Estrutura do Projeto](#-estrutura-do-projeto)
7. [Sistemas Principais](#-sistemas-principais)
8. [Comandos e Atalhos](#-comandos-e-atalhos)
9. [Solução de Problemas](#-solução-de-problemas)
10. [Configurações Avançadas](#-configurações-avançadas)
11. [Contribuindo](#-contribuindo)
12. [Licença](#-licença)

---

## 🎮 Sobre

O **MTA DayZ** é um modo de jogo completo de sobrevivência pós-apocalíptica desenvolvido para o Multi Theft Auto: San Andreas (MTA:SA). Inspirado no DayZ original, este modo transforma o GTA San Andreas em uma experiência de sobrevivência contra zumbis, onde os jogadores devem gerenciar recursos, combater infectados, e sobreviver em um mundo hostil.

### Filosofia do Jogo

- **Sobrevivência** - Gerenciar recursos vitais (sangue, fome, sede, temperatura)
- **Exploração** - Buscar suprimentos em locais perigosos
- **Combate** - Enfrentar zumbis e possivelmente outros jogadores

---

## ✨ Características

### Principais Funcionalidades

- 🧟 **Sistema de Zumbis** - Até 50 zumbis simultâneos com IA avançada
- 🎒 **Inventário Complexo** - 8 slots expansíveis com mochilas (até 10+ slots)
- 🚗 **Sistema de Veículos** - Mais de 10 tipos de veículos com sistema de danos e combustível
- 💉 **Sobrevivência Realista** - Gerenciamento de fome, sede, temperatura e sangue
- 🗺️ **Mundo Aberto** - Mapa Chernarus com 1000+ pontos de loot
- 🔫 **Arsenal Completo** - 28 armas + 10 tipos de munição
- 🏥 **Sistema Médico** - Tratamento de ferimentos, sangramento e doenças
- 👥 **Multiplayer** - Sistema de contas, grupos e interação social
- 🛠️ **Construção** - Tendas, cercas e estruturas defensivas
- 🎯 **Missões Dinâmicas** - Eventos de servidor com recompensas

### Estatísticas do Sistema

- **Armas**: 28 tipos diferentes (pistolas, rifles, snipers, melee)
- **Itens**: 50+ tipos (comida, medicamentos, ferramentas, equipamentos)
- **Veículos**: 20+ modelos (carros, motos, helicópteros, barcos)
- **Zumbis**: 15 skins diferentes com IA comportamental
- **Pontos de Loot**: 1000+ localizações no mapa

---

## 🚀 Instalação Rápida (Windows)

### Passo 1: Baixar o MTA Server

1. Acesse [multitheftauto.com](https://multitheftauto.com/)
2. Baixe o **MTA:SA Server** para Windows
3. Execute o instalador e siga as instruções
4. Anote o caminho de instalação (exemplo: `C:\Program Files\MTA San Andreas 1.5\server\`)

### Passo 2: Baixar o Gamemode

1. Baixe este repositório como ZIP: [Download ZIP](https://github.com/TioMalandrex/mta-dayz/archive/refs/heads/main.zip)
2. Extraia todos os arquivos
3. Copie todas as pastas do gamemode para:
   ```
   C:\Program Files\MTA San Andreas 1.5\server\mods\deathmatch\resources\
   ```

### Passo 3: Configurar Recursos

1. Abra o arquivo `mtaserver.conf` localizado em:
   ```
   C:\Program Files\MTA San Andreas 1.5\server\mods\deathmatch\
   ```

2. Adicione estas linhas dentro da tag `<config>`:
   ```xml
   <resource src="dayzepoch" startup="1" protected="0" />
   <resource src="e_login" startup="1" protected="0" />
   <resource src="dayzmap" startup="1" protected="0" />
   <resource src="e_admin" startup="1" protected="0" />
   <resource src="e_scoreboard" startup="1" protected="0" />
   <resource src="e_downloader" startup="1" protected="0" />
   <resource src="e_shop" startup="1" protected="0" />
   <resource src="e_gps" startup="1" protected="0" />
   <resource src="e_textures" startup="1" protected="0" />
   <resource src="e_map" startup="1" protected="0" />
   <resource src="e_radar" startup="1" protected="0" />
   <resource src="e_dynamicsky" startup="1" protected="0" />
   <resource src="particles" startup="1" protected="0" />
   <resource src="noglitch" startup="1" protected="0" />
   ```

### Passo 4: Configurar Permissões (ACL)

1. Abra o arquivo `acl.xml` no mesmo diretório
2. Localize o grupo `<group name="Admin">` e adicione dentro dele:
   ```xml
   <object name="resource.dayzepoch"></object>
   <object name="resource.e_login"></object>
   ```

### Passo 5: Iniciar o Servidor

1. Vá até a pasta do servidor
2. Execute `MTA Server.exe`
3. Aguarde até ver a mensagem "Server started and is ready to accept connections!"

**Pronto!** Seu servidor DayZ está funcionando. Conecte usando `localhost:22003`

> **💡 Dica**: Para Linux, veja a seção [Instalação Linux](#instalação-linux) no final do documento.

---

## 📋 Instalação Detalhada (Windows)

### Requisitos do Sistema

**Hardware Mínimo:**
- Processador: Dual-core 2.0 GHz
- RAM: 2 GB
- Espaço: 1 GB livre
- Internet: 10 Mbps upload
- Windows 7 ou superior

**Hardware Recomendado:**
- Processador: Quad-core 3.0+ GHz
- RAM: 4+ GB
- Espaço: 2+ GB (SSD recomendado)
- Internet: 50+ Mbps upload
- Windows Server 2016+ ou Windows 10/11

**Software Necessário:**
- MTA:SA Server 1.5.x ou superior
- Visual C++ Redistributable 2015-2022 ([Download aqui](https://aka.ms/vs/17/release/vc_redist.x64.exe))

### Passo a Passo Completo

#### 1. Instalar o MTA Server

1. Acesse [https://multitheftauto.com/](https://multitheftauto.com/)
2. Clique em **"Download MTA:SA Server"**
3. Baixe a versão Windows
4. Execute o instalador `mtasa-server-1.x.x.exe`
5. Durante a instalação:
   - Escolha o caminho (recomendado: `C:\MTA-Server\`)
   - Marque "Create desktop shortcut" se desejar
   - Clique em "Install"
6. Aguarde a conclusão da instalação

#### 2. Preparar o Gamemode DayZ

1. **Baixar o gamemode:**
   - Opção A: Baixe o ZIP: [https://github.com/TioMalandrex/mta-dayz/archive/refs/heads/main.zip](https://github.com/TioMalandrex/mta-dayz/archive/refs/heads/main.zip)
   - Opção B: Se tiver Git instalado: `git clone https://github.com/TioMalandrex/mta-dayz.git`

2. **Extrair os arquivos:**
   - Extraia o conteúdo do ZIP para uma pasta temporária
   - Você verá várias pastas: `dayzepoch`, `e_admin`, `e_login`, etc.

3. **Copiar para o servidor:**
   - Abra a pasta do MTA Server: `C:\MTA-Server\mods\deathmatch\resources\`
   - Copie TODAS as pastas do gamemode para esta pasta
   - Resultado esperado: você deve ver pastas como `C:\MTA-Server\mods\deathmatch\resources\dayzepoch\`

#### 3. Configurar o Servidor

**A. Editar mtaserver.conf:**

1. Abra o arquivo: `C:\MTA-Server\mods\deathmatch\mtaserver.conf`
2. Use o Bloco de Notas ou Notepad++
3. Localize a seção `<config>` (geralmente no início do arquivo)
4. Adicione estas configurações dentro de `<config>`:

```xml
<!-- Nome do seu servidor -->
<servername>Meu Servidor DayZ</servername>

<!-- Porta do servidor (padrão: 22003) -->
<serverport>22003</serverport>

<!-- Número máximo de jogadores -->
<maxplayers>32</maxplayers>

<!-- Recursos do DayZ (IMPORTANTE!) -->
<resource src="dayzepoch" startup="1" protected="0" />
<resource src="e_login" startup="1" protected="0" />
<resource src="dayzmap" startup="1" protected="0" />
<resource src="e_admin" startup="1" protected="0" />
<resource src="e_scoreboard" startup="1" protected="0" />
<resource src="e_downloader" startup="1" protected="0" />
<resource src="e_shop" startup="1" protected="0" />
<resource src="e_gps" startup="1" protected="0" />
<resource src="e_textures" startup="1" protected="0" />
<resource src="e_map" startup="1" protected="0" />
<resource src="e_radar" startup="1" protected="0" />
<resource src="e_dynamicsky" startup="1" protected="0" />
<resource src="particles" startup="1" protected="0" />
<resource src="noglitch" startup="1" protected="0" />
```

5. Salve o arquivo

**B. Configurar Permissões (ACL):**

1. Abra o arquivo: `C:\MTA-Server\mods\deathmatch\acl.xml`
2. Localize `<group name="Admin">`
3. Adicione estas linhas dentro do grupo Admin:

```xml
<object name="resource.dayzepoch"></object>
<object name="resource.e_login"></object>
```

4. Para se tornar admin, adicione também:
```xml
<object name="user.SeuNomeNoJogo"></object>
```
   (Substitua "SeuNomeNoJogo" pelo seu nome de usuário MTA)

5. Salve o arquivo

#### 4. Iniciar o Servidor

1. Vá para a pasta: `C:\MTA-Server\`
2. Execute `MTA Server.exe` (duplo clique)
3. Uma janela de console abrirá
4. Aguarde as mensagens:
   ```
   [INFO] Resource 'dayzepoch' started
   [INFO] Resource 'e_login' started
   ...
   [INFO] Server started and is ready to accept connections!
   ```

Se ver mensagens de erro, verifique:
- Se todos os recursos foram copiados corretamente
- Se o `mtaserver.conf` está configurado corretamente
- Se não há erros de digitação nos nomes dos recursos

#### 5. Conectar ao Servidor

**No seu computador (ou de outro computador na rede):**

1. Abra o **MTA:SA Client** (o jogo)
2. Clique em **"Quick Connect"**
3. Em "Host", digite:
   - Se for no mesmo PC: `localhost`
   - Se for de outro PC: `SEU_IP` (exemplo: `192.168.1.100`)
4. Em "Port", deixe: `22003`
5. Clique em **"Connect"**
6. Na primeira vez, você verá a tela de registro
7. Crie sua conta e faça login

**Pronto!** Você está no servidor DayZ! 🎮

#### 6. Configurar Firewall (Se necessário)

Se outros jogadores não conseguirem conectar:

1. Abra o **Painel de Controle**
2. Vá em **Sistema e Segurança** → **Firewall do Windows Defender**
3. Clique em **"Configurações avançadas"**
4. Clique em **"Regras de Entrada"** → **"Nova Regra..."**
5. Selecione **"Porta"** → Avançar
6. Selecione **"TCP e UDP"**
7. Digite a porta: `22003`
8. Selecione **"Permitir a conexão"**
9. Marque todos os perfis (Domínio, Particular, Público)
10. Dê um nome: `MTA Server`
11. Clique em **"Concluir"**

### Verificação Final

Use este checklist para confirmar que tudo está funcionando:

- [ ] Servidor inicia sem erros
- [ ] Console mostra "Server started and is ready to accept connections!"
- [ ] Todos os recursos aparecem como "started" no console
- [ ] Consigo conectar usando `localhost:22003`
- [ ] Tela de login/registro aparece
- [ ] Consigo criar uma conta e fazer login
- [ ] O jogo carrega e eu apareço no mapa

Se todos os itens estão marcados, **parabéns!** Seu servidor está funcionando perfeitamente! 🎉

---

## 🐧 Instalação Linux

<details>
<summary><b>Clique aqui para ver instruções de instalação no Linux</b></summary>

### Requisitos
- Ubuntu 18.04+ ou outra distribuição Linux compatível
- Acesso root ou sudo

### Instalação do MTA Server

```bash
# Baixar MTA Server
wget https://linux.multitheftauto.com/dl/multitheftauto_linux_x64.tar.gz

# Extrair
tar -xzvf multitheftauto_linux_x64.tar.gz

# Entrar no diretório
cd multitheftauto_linux_x64

# Dar permissão de execução
chmod +x mta-server64
```

### Instalar o Gamemode

```bash
# Baixar o gamemode
git clone https://github.com/TioMalandrex/mta-dayz.git

# Copiar recursos para o servidor
cp -r mta-dayz/* mods/deathmatch/resources/
```

### Configurar

Edite os arquivos da mesma forma que no Windows:
- `mods/deathmatch/mtaserver.conf` - adicione os recursos
- `mods/deathmatch/acl.xml` - configure permissões

### Iniciar Servidor

```bash
# Iniciar diretamente
./mta-server64

# OU iniciar em segundo plano com screen
screen -S mta-dayz
./mta-server64
# Pressione Ctrl+A, depois D para detach
# Para retornar: screen -r mta-dayz
```

### Configurar Firewall (UFW)

```bash
sudo ufw allow 22003/tcp
sudo ufw allow 22003/udp
sudo ufw reload
```

</details>

---

## 🏗️ Estrutura do Projeto

### Recursos Modulares

O modo de jogo é dividido em 14 recursos que trabalham em conjunto:

```
mta-dayz/
├── 🎮 dayzepoch/          # Núcleo principal do jogo
│   ├── core.lua           # Lógica principal do servidor
│   ├── core_client.lua    # Lógica principal do cliente
│   ├── inventory.lua      # Sistema de inventário
│   ├── accounts.lua       # Sistema de contas
│   ├── zombies_s.lua      # Sistema de zumbis (servidor)
│   ├── zombies_c.lua      # Sistema de zumbis (cliente)
│   ├── vehicles.lua       # Sistema de veículos
│   ├── pickups.lua        # Sistema de pickups/loot
│   └── lootspawns.lua     # Localizações de loot
│
├── 🛡️ e_admin/            # Painel administrativo
├── 🔐 e_login/            # Sistema de login/registro
├── 🛒 e_shop/             # Sistema de loja
├── 🗺️ e_map/              # Mapa interativo
├── 📡 e_radar/            # Radar de jogadores
├── 📊 e_scoreboard/       # Placar de pontuações
├── 🎯 e_missions/         # Sistema de missões
├── 🌅 e_dynamicsky/       # Clima e dia/noite
├── 🎨 e_textures/         # Texturas customizadas
├── 📥 e_downloader/       # Downloads automáticos
├── 📍 e_gps/              # Sistema GPS
├── 🗺️ dayzmap/            # Mapa Chernarus
├── 🚫 noglitch/           # Anti-exploits
└── ✨ particles/          # Efeitos visuais
```

---

## 🎯 Sistemas Principais

### 1. Sistema de Sobrevivência

**Estatísticas do Jogador:**

| Estatística | Máximo | Efeitos |
|-------------|--------|---------|
| **Sangue** | 12.000 | Morte ao chegar a 0 |
| **Fome** | 100 | Perda de sangue se ficar em 0 |
| **Sede** | 100 | Perda de sangue se ficar em 0 |
| **Temperatura** | 34-38°C | Afeta sede e saúde |
| **Sangramento** | 0-100 | Perda contínua de sangue |

**Mecânicas:**
- Fome e sede diminuem automaticamente (-1.5/ciclo)
- Sangramento requer bandagem para parar
- Temperatura afetada por clima e localização
- Sistema de humanidade (karma baseado em ações)

### 2. Sistema de Inventário

**Capacidade:**
- Inventário base: 8 slots
- Com mochila: até 10+ slots (dependendo do tipo)

**Categorias de Itens:**
- 🔫 Armas (28 tipos)
- 📦 Munição (10 tipos de carregador)
- 🍖 Comida e Bebida (15+ itens)
- 💊 Medicamentos (7 tipos)
- 🎒 Equipamentos (mochilas, capacetes, coletes)
- 🔧 Ferramentas (GPS, binóculos, rádio, toolbox)
- 🚗 Peças de Veículos (pneus, motor, rotor, combustível)
- 🏗️ Construção (tendas, cercas, cofres)

**Interação:**
- Tecla **J** para abrir inventário
- Arrastar e soltar para organizar
- Clique direito para usar itens

### 3. Sistema de Zumbis

**Características:**
- Limite: 50 zumbis simultâneos
- 15 skins diferentes
- IA com 2 estados: Idle (parado) e Chase (perseguição)
- Spawn dinâmico perto de jogadores
- Drops de loot ao morrer

**Comportamento:**
- Detectam jogadores em raio específico
- Perseguem e atacam automaticamente
- Causam dano e sangramento
- Sons de gemidos e ataques

### 4. Sistema de Veículos

**Tipos Disponíveis:**
- 🚁 Helicópteros (UH-1H Huey, AH-6)
- 🚙 Carros (HMMWV, UAZ, SUV, Pickups)
- 🚛 Caminhões (Ural, Armored Truck)
- 🏍️ Motos e ATVs
- 🚤 Barcos (PBX)

**Sistema:**
- Combustível (0-100)
- Danos por peças (motor, pneus, rotor)
- Armazenamento (20 slots por padrão)
- Reparos com toolbox e peças
- Tecla **K** para ligar/desligar motor

### 5. Sistema de Loot

**Localizações:**
- 1000+ pontos de spawn no mapa
- Categorização por área (fazenda, residencial, industrial, militar, médica)
- Respawn automático com cooldown
- Raridade baseada em probabilidade

**Áreas:**
- **Fazendas**: Ferramentas, comida, armas básicas
- **Residencial**: Comida, bebidas, roupas
- **Industrial**: Peças de veículos, ferramentas
- **Militar**: Armas avançadas, munição
- **Médico**: Medicamentos, kits médicos

### 6. Sistema de Missões

**Tipos:**
- **Caixa de Suprimentos**: Spawn aleatório, defesa contra zumbis, loot raro
- **Queda de Helicóptero**: Evento especial, armas militares, área de PvP

**Mecânicas:**
- Timer de 1 hora entre missões
- Duração de 30 minutos
- Marcadores no mapa
- Recompensas especiais

---

## ⌨️ Comandos e Atalhos

### Comandos de Chat

| Comando | Atalho | Descrição |
|---------|--------|-----------|
| `/globalchat <msg>` | **X** | Chat global (todos veem) |
| `/radiochat <msg>` | **U** | Chat de rádio (requer Radio Device) |
| `/teamchat <msg>` | **Y** | Chat de grupo |
| `/kill` | - | Suicídio (perde tudo) |

### Comandos de Admin

| Comando | Descrição |
|---------|-----------|
| `/give [jogador] [qtd]` | Dar itens ao jogador |
| `/kickall` | Expulsar todos os jogadores |
| `/dobackup` | Fazer backup de veículos |
| `/loadbackup` | Carregar backup de veículos |

### Atalhos de Teclado Essenciais

#### Inventário e Interação
- **J** - Abrir/Fechar inventário
- **E** - Menu de interação
- **Mouse 3** - Menu de interação (alternativo)
- **Scroll Mouse** - Navegar no menu

#### Emotes
- **,** (vírgula) - Mãos para cima
- **.** (ponto) - Sentar
- **L** - Deitar
- **;** (ponto e vírgula) - Gesto amigável

#### Veículos
- **F** - Entrar/Sair de veículo
- **K** - Ligar/Desligar motor
- **W/A/S/D** - Dirigir

#### Combate
- **Mouse Esquerdo** - Atirar/Atacar
- **Mouse Direito** - Mirar
- **R** - Recarregar

#### Interface
- **F1** - Sistema de time
- **F11** ou **M** - Mapa
- **Tab** - Scoreboard
- **O** - Painel de admin (apenas admins)

### Painel de Administração (Tecla O)

**Funcionalidades:**
- Gerenciar jogadores (kick, ban, mute, freeze, kill)
- Dar itens via interface gráfica
- Spawnar veículos
- Controlar clima
- Editar estatísticas dos jogadores
- Superman mode (voo livre)
- Warp/teleporte

**Opções de Ban:**
- Durações: 1 hora, 1 dia, 1 semana, permanente
- Tipos: IP, Serial, Ambos

---

## 🔧 Solução de Problemas

### Servidor Não Inicia

**Sintomas**: Erro ao iniciar recursos

**Soluções:**
1. Verifique se todos os arquivos foram copiados
2. Confirme permissões no ACL
3. Verifique nomes dos recursos no `mtaserver.conf`
4. Linux: `chmod -R 755 resources/`

### Login Não Funciona

**Sintomas**: Tela de login não aparece

**Soluções:**
1. Verifique se `e_login` está na lista de recursos
2. Confirme ACL: `<object name="resource.e_login"></object>`
3. Reinicie: `restart e_login` no console

### Zumbis Não Spawnam

**Soluções:**
1. Aguarde alguns minutos (spawn é gradual)
2. Mova-se pelo mapa (spawnam perto de jogadores)
3. Verifique console por erros
4. Reinicie: `restart dayzepoch`

### Loot Não Aparece

**Soluções:**
1. Aguarde respawn (timer configurado)
2. Explore áreas diferentes
3. Verifique se `dayzepoch` está rodando
4. Reinicie recurso se necessário

### Admin Não Funciona

**Sintomas**: Tecla O não abre painel

**Soluções:**
1. Confirme grupo Admin no `acl.xml`
2. Adicione seu usuário: `<object name="user.SeuNome"></object>`
3. Reinicie servidor após alterar ACL
4. Console: `aclrequest allow user.SeuNome Admin`

### Performance/Lag

**Soluções:**
1. Ajuste `fpslimit` no config (recomendado: 36)
2. Habilite: `<bandwidth_reduction>medium</bandwidth_reduction>`
3. Reduza `maxplayers` se necessário
4. Aumente RAM do servidor
5. Use SSD ao invés de HDD

### Porta em Uso

**Sintomas**: Erro "Port already in use"

**Soluções:**
1. Altere porta no `mtaserver.conf`: `<serverport>22005</serverport>`
2. Abra porta no firewall:

**Windows:**
```cmd
netsh advfirewall firewall add rule name="MTA Server" dir=in action=allow protocol=UDP localport=22005
```

**Linux (UFW):**
```bash
sudo ufw allow 22005/tcp
sudo ufw allow 22005/udp
```

---

## ⚙️ Configurações Avançadas

### Configurar Admin

**Método 1: Via ACL (Recomendado)**
```xml
<group name="Admin">
    <object name="user.NomeDoJogador"></object>
</group>
```

**Método 2: Console do Servidor**
```
aclrequest allow user.NomeDoJogador Admin
```

### Ajustar Performance

**Para servidores com muitos jogadores:**

```xml
<!-- Aumentar FPS -->
<fpslimit>60</fpslimit>

<!-- Redução de banda -->
<bandwidth_reduction>medium</bandwidth_reduction>

<!-- Sync otimizado -->
<lightweight_sync_enabled>1</lightweight_sync_enabled>
```

### Personalizar Spawns de Loot

Edite `dayzepoch/lootspawns.lua` para adicionar/remover pontos de loot.

### Ajustar Dificuldade

Edite `dayzepoch/core.lua`:
- Taxa de fome/sede
- Dano de zumbis
- Velocidade de spawn de zumbis
- Quantidade máxima de zumbis

### Backup Automático

**Linux com Cron:**
```bash
# Edite crontab
crontab -e

# Adicione backup diário às 3:00 AM
0 3 * * * tar -czf /backups/mta-dayz-$(date +\%Y\%m\%d).tar.gz /caminho/mta-server/mods/deathmatch/
```

**Windows com Tarefa Agendada:**
1. Abra Agendador de Tarefas
2. Criar Tarefa Básica
3. Configure script de backup
4. Agende horário desejado

---

## 📝 Checklist de Verificação

Use esta lista após instalação:

- [ ] Servidor inicia sem erros
- [ ] Todos os 14 recursos carregam (`list` no console)
- [ ] Consigo conectar ao servidor
- [ ] Tela de login aparece
- [ ] Consigo registrar conta
- [ ] Consigo fazer login
- [ ] Spawno no jogo corretamente
- [ ] HUD aparece (sangue, fome, sede)
- [ ] Inventário abre (tecla J)
- [ ] Encontro loot pelo mapa
- [ ] Zumbis spawnam e atacam
- [ ] Sistema de fome/sede funciona
- [ ] Posso entrar em veículos
- [ ] Veículo liga com tecla K
- [ ] Admin panel funciona (se admin)

---

## 🤝 Contribuindo

Contribuições são bem-vindas! Para contribuir:

1. Fork o projeto
2. Crie uma branch para sua feature (`git checkout -b feature/NovaFeature`)
3. Commit suas mudanças (`git commit -m 'Adiciona NovaFeature'`)
4. Push para a branch (`git push origin feature/NovaFeature`)
5. Abra um Pull Request

### Diretrizes

- Mantenha o código limpo e documentado
- Teste suas alterações antes de submeter
- Siga o estilo de código existente
- Atualize a documentação se necessário

---

## 📄 Licença

Este projeto está sob a licença especificada no arquivo [LICENSE](LICENSE).

---

## 🌟 Créditos

**Desenvolvido por:**
- Marwin
- L
- -ffs-Sniper
- kaasis
- Tekken

**Baseado em:**
- DayZ original por Dean Hall
- Multi Theft Auto: San Andreas

---

## 📞 Suporte

- **Issues**: [GitHub Issues](https://github.com/TioMalandrex/mta-dayz/issues)
- **Documentação MTA**: [wiki.multitheftauto.com](https://wiki.multitheftauto.com/)
- **Fórum MTA**: [forum.multitheftauto.com](https://forum.multitheftauto.com/)

---

## 📸 Preview

![Preview 1](https://image.prntscr.com/image/lfkOVHKYRnmmGbiIRRdk1Q.png)
![Preview 2](https://image.prntscr.com/image/vf0X-utGQOqT9mKMILm_Gg.png)
![Preview 3](https://image.prntscr.com/image/aFyKtIRlTn21Ku86FsDFiQ.png)

---

<div align="center">

**🎮 Boa sorte e divirta-se no apocalipse! 🧟‍♂️**

*Sobreviva, explore, combata.*

</div>
