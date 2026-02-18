# 📋 Análise Completa do Sistema - MTA DayZ

> **Documentação Técnica Completa do Modo de Jogo DayZ para Multi Theft Auto**
> 
> Versão: 0.3r2 | Autores: Marwin, L, -ffs-Sniper, kaasis, Tekken

---

## 📖 Índice

1. [Descrição Geral](#-descrição-geral)
2. [Arquitetura do Sistema](#-arquitetura-do-sistema)
3. [Sistemas Principais](#-sistemas-principais)
4. [Mecânicas de Gameplay](#-mecânicas-de-gameplay)
5. [Estatísticas do Jogador](#-estatísticas-do-jogador)
6. [Sistema de Itens](#-sistema-de-itens)
7. [Tecnologias e Dependências](#-tecnologias-e-dependências)
8. [Performance e Otimização](#-performance-e-otimização)

---

## 🎮 Descrição Geral

### O Que é MTA DayZ?

O **MTA DayZ** é um modo de jogo (gamemode) completo de sobrevivência pós-apocalíptica desenvolvido para o Multi Theft Auto: San Andreas (MTA:SA). Inspirado no DayZ original, este modo transforma o GTA San Andreas em uma experiência de sobrevivência contra zumbis, onde os jogadores devem gerenciar recursos, combater infectados, e sobreviver em um mundo hostil.

### Características Principais

- 🧟 **Sistema de Zumbis** - Até 50 zumbis simultâneos com IA avançada
- 🎒 **Inventário Complexo** - 8 slots expansíveis com mochilas (até 10+ slots)
- 🚗 **Sistema de Veículos** - Mais de 10 tipos de veículos com sistema de danos
- 💉 **Sobrevivência Realista** - Gerenciamento de fome, sede, temperatura e sangue
- 🗺️ **Mundo Aberto** - Mapa Chernarus com locais de interesse (loot spawns)
- 🔫 **Arsenal Completo** - 28 armas + 10 tipos de munição
- 🏥 **Sistema Médico** - Tratamento de ferimentos, sangramento e ossos quebrados
- 👥 **Multiplayer** - Sistema de contas, grupos e interação social
- 🛠️ **Construção** - Tendas, cercas e estruturas defensivas
- 🎯 **Missões** - Sistema de missões dinâmicas

### Filosofia do Jogo

O MTA DayZ foca em três pilares principais:

1. **Sobrevivência** - Gerenciar recursos vitais (sangue, fome, sede, temperatura)
2. **Exploração** - Buscar suprimentos em locais perigosos
3. **Combate** - Enfrentar zumbis e possivelmente outros jogadores

---

## 🏗️ Arquitetura do Sistema

### Estrutura de Recursos

O modo de jogo é dividido em 14 recursos modulares que trabalham em conjunto:

```
mta-dayz/
├── 🎮 dayzepoch/          # Núcleo principal do modo de jogo
├── 🛡️ e_admin/            # Sistema administrativo completo
├── 🔐 e_login/            # Autenticação e registro de contas
├── 🛒 e_shop/             # Sistema de loja e economia
├── 🗺️ e_map/              # Sistema de mapa interativo
├── 📡 e_radar/            # Sistema de rastreamento de jogadores
├── 📊 e_scoreboard/       # Placar de pontuações
├── 🎯 e_missions/         # Gerador de missões dinâmicas
├── 🌅 e_dynamicsky/       # Ciclo dia/noite e clima
├── 🎨 e_textures/         # Texturas customizadas
├── 📥 e_downloader/       # Gerenciador de downloads
├── 📍 e_gps/              # Sistema de navegação GPS
├── 🗺️ dayzmap/            # Mapa DayZ Chernarus
├── 🚫 noglitch/           # Sistema anti-exploits
└── ✨ particles/          # Sistema de partículas visuais
```

### Fluxo de Dados

```
┌──────────────┐
│   JOGADOR    │
└──────┬───────┘
       │
       ↓
┌──────────────┐     ┌──────────────┐
│   e_login    │────▶│  dayzepoch   │ (Núcleo)
└──────────────┘     └──────┬───────┘
                            │
       ┌────────────────────┼────────────────────┐
       ↓                    ↓                    ↓
┌──────────────┐     ┌──────────────┐    ┌──────────────┐
│  e_admin     │     │   e_shop     │    │   e_radar    │
└──────────────┘     └──────────────┘    └──────────────┘
       │                    │                    │
       └────────────────────┼────────────────────┘
                            ↓
                    ┌──────────────┐
                    │ BANCO DADOS  │
                    └──────────────┘
```

---

## 🔧 Sistemas Principais

### 1. 🔐 Sistema de Contas (e_login)

**Para Que Serve**: Gerenciar autenticação, registro e dados persistentes dos jogadores.

**Como Funciona**:
- Interface gráfica de login/registro na conexão
- Armazenamento de dados do jogador em banco de dados interno
- Sistema de configurações por conta
- Suporte a recuperação de senha via e-mail

**Recursos**:
- Tela de login customizada com interface DayZ
- Registro de novas contas com validação
- Salvamento automático de progresso
- Sistema de sessões para prevenir login simultâneo

**Arquivos Principais**:
- `login_c.lua` - Interface cliente
- `login_s.lua` - Lógica servidor
- `settings_c.lua` - Configurações do jogador

---

### 2. 🎒 Sistema de Inventário

**Para Que Serve**: Gerenciar todos os itens que o jogador carrega, armazena e utiliza.

**Como Funciona**:

O inventário é dividido em **9 categorias** principais:

| Categoria | Descrição | Itens |
|-----------|-----------|-------|
| 🔫 **Armas Longas** | Rifles, snipers, shotguns | 15 tipos |
| 🔫 **Armas Curtas** | Pistolas, facas, ferramentas corpo-a-corpo | 11 tipos |
| 💣 **Explosivos** | Granadas, binóculos | 2 tipos |
| 📦 **Munições** | Carregadores para todas as armas | 10 tipos |
| 🍖 **Comida** | Alimentos e bebidas | 10 tipos |
| 💊 **Medicamentos** | Itens médicos e de tratamento | 8 tipos |
| 🎒 **Equipamentos** | Roupas, mochilas, capacetes, coletes | 20 tipos |
| 🔧 **Ferramentas** | GPS, rádio, binóculos, lanternas | 9 tipos |
| 🛠️ **Especiais** | Construção, combustível, peças | 14 tipos |

**Mecânica de Slots**:
- **Base**: 8 slots iniciais
- **Expansão**: Mochilas aumentam capacidade (+2 a +8 slots)
- **Máximo**: Até 16 slots com mochila grande

**Interface**:
- Tecla **I** para abrir/fechar
- Arrastar e soltar itens entre categorias
- Clique direito para usar/equipar
- Informações detalhadas ao passar o mouse

---

### 3. 🧟 Sistema de Zumbis

**Para Que Serve**: Criar a ameaça principal do jogo - hordas de infectados que vagam pelo mapa.

**Como Funciona**:

**Configuração**:
```lua
Limite Máximo: 50 zumbis simultâneos
Velocidade: 2x velocidade normal de caminhada
Skins: 16 variações diferentes (IDs: 15, 22, 56, 67-70, 92, 97, 105-108, 126-129)
```

**Estados de IA**:

1. **Inativo (Idle)**
   - Movimento aleatório a cada 7 segundos
   - Patrulha em área local
   - Sons ocasionais de zumbi

2. **Perseguição (Chase)**
   - Detecta jogador em raio específico
   - Animação de corrida ("fatsprint")
   - Velocidade aumentada
   - Som de alerta

3. **Ataque (Attack)**
   - Ao alcançar jogador
   - Causa dano por golpe
   - Pode causar sangramento

**Sistema de Respawn**:
- Spawnam próximo a jogadores
- Respawnam após morte (tempo variável)
- Densidade maior em áreas urbanas

**Drops ao Morrer**:
- **Comum** (5-9%): Comida, Madeira, Flares
- **Médio** (1-6%): Roupas, Mochilas, Combustível
- **Raro** (0.1-0.5%): Armas, Munição

---

### 4. 🚗 Sistema de Veículos

**Para Que Serve**: Transporte rápido pelo mapa e armazenamento adicional.

**Como Funciona**:

**Veículos Disponíveis**:

| Veículo | ID | Spawns | Capacidade Combustível |
|---------|-----|--------|----------------------|
| MH6J (Helicóptero Civil) | 487 | 10 | 20L |
| AH6X Little Bird | 497 | 7 | 20L |
| HMMWV (Humvee) | 470 | 10 | 50L |
| Caminhonete | 422 | 8 | 25L |
| Motocicleta | 468 | 11 | 8L |
| URAL (Caminhão Militar) | 433 | 5 | 50L |
| Barco (PBX) | 473 | 9 | 20L |
| Bicicleta | 509 | 14 | 0L |
| Quadriciclo (ATV) | 471 | 10 | 8L |
| Moto Cross | 463 | 8 | 8L |

**Sistema de Peças**:

Cada veículo requer peças específicas para funcionar:

- 🔧 **Motor (Engine)** - 0-4 necessários (varia por veículo)
- 🚁 **Rotor** - 1 necessário (helicópteros)
- 🛞 **Pneus (Tires)** - 1 necessário
- ⛽ **Tanque (Tank)** - 1 necessário
- 🔩 **Sucata (Scrap Metal)** - 0-1 necessário

**Mecânicas**:

1. **Ligar/Desligar**
   - Tecla **K** para ligar motor
   - Requer combustível

2. **Reabastecimento**
   - Usar lata de combustível (item9)
   - Aproximar-se do veículo
   - Selecionar opção de reabastecer

3. **Reparos**
   - Requer Toolbox (toolbelt4)
   - Funciona em veículos com vida ≤ 999
   - Restaura vida do veículo

4. **Instalação de Peças**
   - Coletar peças no mapa
   - Interagir com veículo danificado
   - Instalar peça correspondente

---

### 5. 📦 Sistema de Loot (Saque)

**Para Que Serve**: Distribuir itens pelo mapa para os jogadores coletarem.

**Como Funciona**:

**Tipos de Locais de Loot**:

1. **🏥 Hospitais** (Hospital Boxes)
   - Medicamentos
   - Bandagens
   - Kits médicos
   - Blood bags

2. **🏪 Supermercados** (Supermarket Loot)
   - Comida
   - Bebidas
   - Mochilas pequenas

3. **🏭 Áreas Industriais**
   - Ferramentas
   - Peças de veículos
   - Combustível
   - Materiais de construção

4. **🚁 Helicópteros Caídos** (Helicrash Sites)
   - Armas raras
   - Munição de alto calibre
   - Equipamento tático
   - Óculos de visão noturna

5. **🏚️ Casas Residenciais**
   - Comida
   - Roupas
   - Armas básicas
   - Ferramentas

6. **🚗 Veículos Abandonados**
   - Peças automotivas
   - Combustível
   - Ferramentas

**Sistema de Respawn de Loot**:
- Itens respawnam após serem coletados
- Tempo de respawn: 5-15 minutos
- Qualidade baseada na localização
- Aleatoriedade para evitar farming

---

### 6. 🎯 Sistema de Missões (e_missions)

**Para Que Serve**: Fornecer objetivos dinâmicos e recompensas aos jogadores.

**Como Funciona**:

**Tipos de Missões**:
- Eliminar grupo de zumbis
- Coletar itens específicos
- Explorar localizações
- Escoltar NPCs
- Reparar veículos

**Recompensas**:
- Experiência
- Itens raros
- Moeda do jogo
- Acesso a áreas especiais

---

### 7. 💓 Sistema de Sobrevivência

**Para Que Serve**: Simular necessidades básicas humanas e criar tensão constante.

**Como Funciona**:

**Estatísticas Vitais**:

#### 🩸 Sangue (Blood)
- **Máximo**: 12.000 pontos
- **Regeneração**: Lenta (requer comida e água acima de 80%)
- **Perda**: Dano de zumbis, quedas, tiros
- **Efeitos**:
  - < 9000: Visão ligeiramente acinzentada
  - < 6000: Visão muito acinzentada, movimento lento
  - < 3000: Risco de desmaio
  - = 0: Morte

#### 🍖 Fome (Food)
- **Escala**: 0 (faminto) a 100 (saciado)
- **Consumo**: -1% a cada 3 minutos
- **Efeitos**:
  - < 30: Perda lenta de sangue
  - < 10: Perda rápida de sangue
  - = 0: Morte por inanição

#### 💧 Sede (Thirst)
- **Escala**: 0 (desidratado) a 100 (hidratado)
- **Consumo**: -1.5% a cada 2 minutos
- **Efeitos**:
  - < 40: Visão embaçada
  - < 20: Perda de sangue
  - = 0: Morte por desidratação

#### 🌡️ Temperatura (Temperature)
- **Normal**: 37°C
- **Faixa Saudável**: 36-38°C
- **Efeitos**:
  - < 35°C: Hipotermia (cold=true)
  - > 39°C: Febre
- **Influências**:
  - Clima chuvoso: -0.5°C/min
  - Perto de fogueira: +0.3°C/min
  - Roupas quentes: Reduz perda

#### 🩹 Sangramento (Bleeding)
- **Causa**: Ataques de zumbis, tiros, quedas
- **Efeito**: Perda contínua de sangue (-100/min)
- **Tratamento**: Bandagem (Bandage)

#### 🦴 Osso Quebrado (Broken Bone)
- **Causa**: Quedas de grande altura
- **Efeito**: Impossibilidade de correr
- **Tratamento**: Morfina (Morphine)

#### 😖 Dor (Pain)
- **Causa**: Dano recebido
- **Efeito**: Tremor na mira
- **Tratamento**: Analgésico (Painkiller)

---

### 8. 🛡️ Sistema de Combate

**Para Que Serve**: Mecânicas de luta contra zumbis e outros jogadores.

**Como Funciona**:

**Armas de Longo Alcance**:
- Sistema de mira com tecla dedicada
- Munição limitada (gerenciar carregadores)
- Recarga manual (tecla **R**)
- Dano varia por arma e parte do corpo
- Headshots causam dano crítico

**Armas Corpo-a-Corpo**:
- Machado, faca, taco, pá
- Dano ao clicar
- Não requer munição
- Silenciosas (não atraem zumbis)

**Sistema de Humanidade**:
- **Inicial**: 2.500 pontos
- **Survivor** (>2500): Jogador neutro
- **Bandit** (<2500): Jogador hostil
- Matar survivors reduz humanidade
- Matar bandits aumenta humanidade
- Afeta interações sociais

---

### 9. 👨‍💼 Sistema de Administração (e_admin)

**Para Que Serve**: Ferramentas de moderação e gerenciamento do servidor.

**Como Funciona**:

**Acesso**: Tecla **O** (apenas para administradores)

**Painel Principal**:

#### 📋 Aba Players (Jogadores)
- Lista todos os jogadores online
- Visualizar estatísticas
- Teleportar para jogador
- Teleportar jogador para você
- Congelar/Descongelar
- Observar jogador

#### 🚫 Aba Kick (Expulsar)
- Expulsar jogador temporariamente
- Motivo personalizado
- Histórico de expulsões

#### ⛔ Aba Ban (Banir)
- Banir jogador permanentemente
- Ban por IP, Serial, Account
- Duração configurável
- Motivo obrigatório

#### 🔇 Aba Mute (Silenciar)
- Silenciar jogador no chat
- Duração temporária ou permanente
- Múltiplos canais (global, rádio, time)

#### 💬 Aba Message (Mensagem)
- Enviar mensagem privada
- Broadcast para todos
- Anúncios do servidor

#### 🎁 Aba Give (Dar)
- Dar qualquer item do jogo
- Quantidade personalizável
- 70+ itens disponíveis

#### 🚗 Aba Vehicle (Veículos)
- Spawnar veículos
- Reparar veículos
- Deletar veículos
- 10+ modelos disponíveis

#### 🌦️ Aba Weather (Clima)
- Alterar clima
- Ajustar hora do dia
- Controlar velocidade do tempo

#### 📊 Aba Stats (Estatísticas)
- Ver todas as stats do jogador
- Editar valores
- Reset de personagem

#### 🦸 Superman Mode
- Voar pelo mapa
- Velocidade aumentada
- Atravessar objetos
- Invisibilidade

**Comandos de Console**:
```
/give <jogador> <quantidade> - Dar itens
/kill <jogador> - Matar jogador
/kickall - Expulsar todos
/dobackup - Fazer backup do banco de dados
/loadbackup - Carregar backup
```

---

### 10. 🛒 Sistema de Loja (e_shop)

**Para Que Serve**: Economia do jogo, compra e venda de itens.

**Como Funciona**:

**Moeda**:
- zKills (Zombies Mortos) - moeda principal
- Ganhos: Matar zumbis, completar missões

**Categorias de Itens**:
- Armas e munição
- Medicamentos
- Comida e bebida
- Equipamentos
- Veículos (spawns temporários)

**Localização**:
- Mapa fixo no mundo
- Acesso por interação (tecla **E**)
- Interface de compra/venda

**Preços Dinâmicos**:
- Baseados em raridade
- Oferta e demanda
- Promoções temporárias

---

### 11. 🗺️ Sistema de Mapas (e_map, dayzmap)

**Para Que Serve**: Navegação e localização no mundo do jogo.

**Como Funciona**:

**Mapa Principal** (Tecla **M** ou **F11**):
- Visão aérea do mapa Chernarus
- Marcadores de jogadores
- Pontos de interesse
- Zoom com scroll do mouse
- Clique para marcação

**Minimapa**:
- Canto da tela (HUD)
- Direção e orientação
- Jogadores próximos
- Veículos próximos

**GPS** (e_gps):
- Requer item GPS no inventário
- Coordenadas precisas
- Rota até destino
- Compartilhamento de localização

---

### 12. 📡 Sistema de Radar (e_radar)

**Para Que Serve**: Rastreamento avançado de jogadores e entidades.

**Como Funciona**:

**Ativação**:
- Custo: 50 zKills
- Duração: 10 minutos
- Extensível: +10 min por ativação adicional

**Funcionalidades**:
- Detecta jogadores no mapa
- Mostra direção e distância
- Marcadores coloridos por tipo:
  - 🟢 Verde: Aliados
  - 🔵 Azul: Neutrals
  - 🔴 Vermelho: Bandits

**Limitações**:
- Não detecta jogadores ocultos
- Alcance máximo do mapa
- Atualização a cada 5 segundos

---

### 13. 📊 Sistema de Placar (e_scoreboard)

**Para Que Serve**: Exibir estatísticas dos jogadores online.

**Como Funciona**:

**Ativação**: Tecla **TAB**

**Informações Exibidas**:
- Nome do jogador
- Ping
- Zumbis mortos
- Jogadores mortos
- Tempo vivo
- Humanidade
- Facção (Survivor/Bandit)

**Navegação**:
- Scroll do mouse para rolar
- Clique para ver perfil
- Ordenação por coluna

---

### 14. 🌅 Sistema de Céu Dinâmico (e_dynamicsky)

**Para Que Serve**: Criar ciclo dia/noite e efeitos climáticos realistas.

**Como Funciona**:

**Ciclo Dia/Noite**:
- 24 horas reais = 24 horas no jogo (ajustável)
- Transições suaves
- Iluminação dinâmica

**Clima**:
- ☀️ Ensolarado
- ⛅ Nublado
- 🌧️ Chuvoso
- ⛈️ Tempestade
- 🌫️ Neblina

**Efeitos**:
- Chuva: Reduz temperatura, visibilidade
- Noite: Visibilidade reduzida, zumbis mais perigosos
- Neblina: Dificulta localização

---

### 15. 🔒 Sistema Anti-Glitch (noglitch)

**Para Que Serve**: Prevenir exploits e trapaças.

**Como Funciona**:

**Proteções**:
- Anti-jetpack
- Anti-velocidade anormal
- Anti-noclip
- Anti-teleporte ilegal
- Anti-spawn de veículos
- Anti-spawn de armas
- Detecção de modificações de cliente

**Ações**:
- Log de atividade suspeita
- Kick automático
- Ban temporário/permanente
- Notificação aos admins

---

### 16. ✨ Sistema de Partículas (particles)

**Para Que Serve**: Efeitos visuais imersivos.

**Como Funciona**:

**Efeitos Incluídos**:
- Fumaça de fogueiras
- Sangue de ferimentos
- Poeira de impactos
- Faíscas de ferramentas
- Efeitos de chuva
- Explosões

---

### 17. 📥 Sistema de Downloads (e_downloader)

**Para Que Serve**: Gerenciar transferência de arquivos customizados para clientes.

**Como Funciona**:

**Arquivos Transferidos**:
- Modelos 3D customizados
- Texturas
- Sons
- Shaders

**Otimização**:
- Download em segundo plano
- Cache local
- Verificação de integridade

---

### 18. 🎨 Sistema de Texturas (e_textures)

**Para Que Serve**: Substituir texturas padrão do GTA:SA com visuais temáticos.

**Como Funciona**:

**Shaders**:
- Aplicados em tempo real
- Compatível com DirectX 9
- Melhora visual significativa

**Texturas Customizadas**:
- Edifícios
- Vegetação
- Terreno
- Objetos

---

## 🎯 Mecânicas de Gameplay

### Ciclo de Jogo

```
1. SPAWN
   ↓
2. PROCURAR SUPRIMENTOS
   ↓
3. GERENCIAR SOBREVIVÊNCIA (Fome, Sede, Sangue)
   ↓
4. ENFRENTAR ZUMBIS
   ↓
5. ENCONTRAR VEÍCULO (Opcional)
   ↓
6. CONSTRUIR BASE (Opcional)
   ↓
7. INTERAGIR COM JOGADORES (Aliança ou Combate)
   ↓
8. COMPLETAR MISSÕES (Opcional)
   ↓
[MORTE] → Volta ao SPAWN com perda de itens
```

### Mecânicas Avançadas

#### 🏕️ Sistema de Construção

**Itens de Construção**:
- **Tenda (Tent)**: Armazenamento persistente
- **Cerca de Arame (Wire Fence)**: Defesa perimetral
- **Mina (Mine)**: Armadilha explosiva
- **C4**: Explosivo de demolição

**Como Construir**:
1. Obter item de construção no inventário
2. Selecionar local apropriado
3. Posicionar usando interface
4. Confirmar construção

**Persistência**:
- Estruturas permanecem após logout
- Podem ser destruídas por jogadores
- Requerem manutenção periódica

#### 🔥 Sistema de Fogueira

**Como Fazer**:
1. Coletar lenha (Wood Pile)
2. Usar caixa de fósforos (Box of Matches)
3. Posicionar fogueira

**Benefícios**:
- Aumenta temperatura
- Cozinha carne crua
- Ponto de encontro social

#### 🍖 Sistema de Caça

**Animais Disponíveis**:
- 🦌 Veado (Deer)
- 🐗 Javali (Boar)
- 🐐 Cabra (Goat)

**Como Caçar**:
1. Encontrar animal no mapa (38 spawns)
2. Matar com arma
3. Coletar carne crua (Raw Meat)
4. Cozinhar em fogueira

**Valor Nutricional**:
- Carne Crua: +20 comida (risco de doença)
- Carne Cozida: +40 comida (segura)

#### 💬 Sistema de Comunicação

**Canais de Chat**:

1. **Chat Global** (Tecla **X**)
   - Todos os jogadores veem
   - Alcance ilimitado
   - Cor: Branco

2. **Chat de Rádio** (Tecla **U**)
   - Requer item Rádio
   - Canais configuráveis (1-100)
   - Alcance ilimitado
   - Cor: Verde

3. **Chat de Grupo** (Tecla **Y**)
   - Apenas membros do grupo
   - Cor: Azul

**Comandos de Chat**:
```
/globalchat <mensagem> - Chat global
/radiochat <mensagem> - Chat rádio
/teamchat <mensagem> - Chat de grupo
```

#### 🏃 Sistema de Grupos

**Como Formar Grupo**:
1. Aproximar de jogador
2. Enviar convite via menu
3. Aceitar convite

**Benefícios**:
- Chat privado
- Marcadores no mapa
- Não há fogo amigo
- Compartilhamento de veículos

---

## 📊 Estatísticas do Jogador

### Dados Persistentes (Salvos)

#### Tabela Principal (playerDataTable)

**Vitais e Saúde**:
```lua
blood: 12000          -- Pontos de sangue (0-12000)
food: 80              -- Fome (0-100)
thirst: 80            -- Sede (0-100)
temperature: 37       -- Temperatura (°C)
bleeding: 0           -- Sangramento ativo (0/1)
brokenbone: false     -- Osso quebrado (true/false)
pain: false           -- Dor (true/false)
cold: false           -- Hipotermia (true/false)
```

**Inventário de Armas** (weapon1-28):
```lua
weapon1: 0  -- VKS Sniper
weapon2: 0  -- DMR
weapon3: 0  -- CZ550
weapon4: 0  -- SVD Camo
weapon5: 0  -- M24
...
weapon28: 0 -- Binoculars
```

**Munições** (mag1-10):
```lua
mag1: 0   -- Pistol Ammo
mag2: 0   -- Revolver Ammo
mag3: 0   -- Semi-Rifle Ammo
...
mag10: 0  -- Sniper-2 Ammo
```

**Equipamentos**:
```lua
-- Mochilas (backpack1-7)
backpack1: 0  -- Assault Pack
backpack2: 0  -- Alice Pack
...

-- Capacetes (helmet1-7)
helmet1: 0    -- Special Forces Helmet
helmet2: 0    -- Military Helmet
...

-- Coletes (vest1-2)
vest1: 0      -- Police Vest
vest2: 0      -- Military Vest

-- Roupas (clothing1-9)
clothing1: 0  -- Civilian Clothing
clothing2: 0  -- Survivor Clothing
...
```

**Ferramentas** (toolbelt1-9):
```lua
toolbelt1: 0  -- Night Vision Goggles
toolbelt2: 0  -- Infrared Goggles
toolbelt3: 0  -- Map
toolbelt4: 0  -- Toolbox
toolbelt5: 0  -- Radio Device
toolbelt6: 0  -- Watch
toolbelt7: 0  -- Compass
toolbelt8: 0  -- GPS
toolbelt9: 0  -- Box of Matches
```

**Itens Especiais** (item1-14):
```lua
item1: 0   -- Wood Pile
item2: 0   -- Wire Fencing
item3: 0   -- Mine
item4: 0   -- Car Key
item5: 0   -- Tent
item6: 0   -- C4
item7: 0   -- Red Flare
item8: 0   -- Green Flare
item9: 0   -- Full Gas Canister
item10: 0  -- Empty Gas Canister
item11: 0  -- Blue Flare
item12: 0  -- Wire Fence Kit
item13: 0  -- Jerry Can
item14: 0  -- Sandbag
```

**Comida** (fooditem1-11):
```lua
fooditem1: 0   -- Water Bottle
fooditem2: 0   -- Soda
fooditem3: 0   -- Milk
fooditem4: 0   -- Cooked Meat
fooditem5: 0   -- Pasta
fooditem6: 0   -- Beans
fooditem7: 0   -- Burger
fooditem8: 0   -- Pizza
fooditem9: 0   -- Raw Meat
fooditem10: 0  -- Canned Food
fooditem11: 0  -- Vegetables
```

**Medicamentos** (medicine1-8):
```lua
medicine1: 0  -- Bandage
medicine2: 0  -- Medicine Kit
medicine3: 0  -- Morphine
medicine4: 0  -- Painkiller
medicine5: 0  -- Heat Pack
medicine6: 0  -- Blood Bag
medicine7: 0  -- Small Medic Kit
medicine8: 0  -- Epinephrine
```

**Peças de Veículos** (vehiclepart1-5):
```lua
vehiclepart1: 0  -- Engine
vehiclepart2: 0  -- Rotor Assembly
vehiclepart3: 0  -- Tire
vehiclepart4: 0  -- Tank
vehiclepart5: 0  -- Scrap Metal
```

**Outros Dados**:
```lua
skin: 73                    -- ID da skin atual
MAX_Slots: 8                -- Slots de inventário
helmet: 0                   -- Capacete equipado (ID)
vest: 0                     -- Colete equipado (ID)
currentweapon_1: 0          -- Arma slot 1
currentweapon_2: 0          -- Arma slot 2
currentweapon_3: 0          -- Arma slot 3
humanity: 2500              -- Pontos de humanidade
spawnedzombies: 0           -- Zumbis spawneados
radiochannel: 1             -- Canal de rádio
gpschannel: 1               -- Canal GPS
alivetime: 0                -- Tempo vivo (segundos)
```

#### Tabela de Estatísticas (playerData2Table)

**Estatísticas Globais** (Persistem após morte):
```lua
stats.email: ""                  -- Email do jogador
stats.zombieskilled: 0           -- Total zumbis mortos
stats.headshots: 0               -- Total tiros na cabeça
stats.murders: 0                 -- Total jogadores mortos
stats.banditskilled: 0           -- Total bandits mortos
stats.deaths: 0                  -- Total de mortes
stats.playtime: 0                -- Tempo total jogado (horas)
stats.joined: "YYYY-MM-DD"       -- Data de entrada
```

---

## 🎒 Sistema de Itens

### Categoria: 🔫 Armas

#### Rifles e Snipers (15 armas)

| ID | Nome | Tipo | Munição | Dano | Alcance | Raridade |
|----|------|------|---------|------|---------|----------|
| weapon1 | VKS | Sniper | mag10 | ⭐⭐⭐⭐⭐ | Longo | Lendário |
| weapon2 | DMR | Semi-Sniper | mag8 | ⭐⭐⭐⭐ | Longo | Raro |
| weapon3 | CZ550 | Bolt-Sniper | mag9 | ⭐⭐⭐⭐ | Longo | Comum |
| weapon4 | SVD Camo | Sniper | mag8 | ⭐⭐⭐⭐ | Longo | Raro |
| weapon5 | M24 | Bolt-Sniper | mag9 | ⭐⭐⭐⭐ | Longo | Raro |
| weapon6 | AKS Gold | Rifle | mag4 | ⭐⭐⭐⭐ | Médio | Épico |
| weapon7 | Winchester 1866 | Rifle | mag3 | ⭐⭐⭐ | Médio | Comum |
| weapon9 | AKS 74u | Rifle Curto | mag4 | ⭐⭐⭐ | Curto | Comum |
| weapon10 | AK107 | Rifle | mag4 | ⭐⭐⭐⭐ | Médio | Comum |
| weapon11 | M4A1 HOLO | Rifle | mag5 | ⭐⭐⭐⭐ | Médio | Raro |
| weapon12 | MK48 | LMG | mag6 | ⭐⭐⭐⭐⭐ | Médio | Lendário |
| weapon13 | RPK | LMG | mag4 | ⭐⭐⭐⭐ | Médio | Raro |
| weapon14 | SA58 | Rifle | mag4 | ⭐⭐⭐⭐ | Médio | Raro |
| weapon15 | Saiga 12K | Shotgun | mag7 | ⭐⭐⭐⭐ | Curto | Raro |
| weapon8 | Crossbow | Especial | mag9 | ⭐⭐ | Médio | Raro |

#### Pistolas e Armas Curtas (11 armas)

| ID | Nome | Tipo | Munição | Dano | Alcance | Raridade |
|----|------|------|---------|------|---------|----------|
| weapon21 | M1911 | Pistola | mag1 | ⭐⭐⭐ | Curto | Comum |
| weapon23 | M9SD | Pistola Silenciosa | mag1 | ⭐⭐ | Curto | Raro |
| weapon25 | G17 | Pistola | mag1 | ⭐⭐⭐ | Curto | Comum |
| weapon20 | Micro Uzi | SMG | mag1 | ⭐⭐ | Curto | Raro |
| weapon18 | MP5A5 | SMG | mag1 | ⭐⭐⭐ | Curto | Raro |
| weapon19 | Revolver | Revolver | mag2 | ⭐⭐⭐ | Curto | Comum |
| weapon24 | Hunting Knife | Corpo-a-Corpo | - | ⭐⭐ | Muito Curto | Comum |
| weapon22 | Hatchet | Corpo-a-Corpo | - | ⭐⭐⭐ | Muito Curto | Comum |
| weapon26 | Bat | Corpo-a-Corpo | - | ⭐⭐ | Muito Curto | Comum |
| weapon27 | Shovel | Corpo-a-Corpo | - | ⭐⭐ | Muito Curto | Comum |
| weapon17 | Machete | Corpo-a-Corpo | - | ⭐⭐⭐ | Muito Curto | Raro |

#### Explosivos e Especiais (2 itens)

| ID | Nome | Tipo | Dano | Uso |
|----|------|------|------|-----|
| weapon16 | Grenade | Granada | ⭐⭐⭐⭐⭐ | Anti-grupo |
| weapon28 | Binoculars | Binóculos | - | Observação |

### Categoria: 📦 Munições

| ID | Nome | Balas | Armas Compatíveis |
|----|------|-------|-------------------|
| mag1 | Pistol Ammo | 23 | M1911, M9SD, G17, Micro Uzi, MP5A5 |
| mag2 | Revolver Ammo | 24 | Revolver |
| mag3 | Semi-Rifle Ammo | 29 | Winchester 1866 |
| mag4 | Rifle Ammo | 31 | AKS 74u, AK107, RPK, SA58 |
| mag5 | M4 Rifle Ammo | 31 | M4A1 HOLO |
| mag6 | Heavy Ammo | 30 | MK48 |
| mag7 | Shotgun Ammo | 25 | Saiga 12K |
| mag8 | Sniper Ammo | 34 | DMR, SVD Camo |
| mag9 | Bolt Ammo | 33 | CZ550, M24, Crossbow |
| mag10 | Sniper-2 Ammo | 34 | VKS |

### Categoria: 🍖 Comida

| ID | Nome | +Fome | +Sede | Efeito |
|----|------|-------|-------|--------|
| fooditem1 | Water Bottle | 0 | +50 | Hidratação |
| fooditem2 | Soda | +5 | +30 | Energia |
| fooditem3 | Milk | +10 | +40 | Nutrição |
| fooditem4 | Cooked Meat | +40 | 0 | Proteína |
| fooditem5 | Pasta | +30 | 0 | Carboidratos |
| fooditem6 | Beans | +25 | 0 | Fibra |
| fooditem7 | Burger | +45 | 0 | Fast Food |
| fooditem8 | Pizza | +40 | 0 | Fast Food |
| fooditem9 | Raw Meat | +20 | 0 | Risco de doença |
| fooditem10 | Canned Food | +35 | 0 | Durável |
| fooditem11 | Vegetables | +20 | +10 | Saudável |

### Categoria: 💊 Medicamentos

| ID | Nome | Efeito | Uso |
|----|------|--------|-----|
| medicine1 | Bandage | Para sangramento | Essencial |
| medicine2 | Medicine Kit | +4 pontos de cura | Avançado |
| medicine3 | Morphine | Cura osso quebrado | Emergência |
| medicine4 | Painkiller | Remove dor | Conforto |
| medicine5 | Heat Pack | +Temperatura | Inverno |
| medicine6 | Blood Bag | +Sangue | Crítico |
| medicine7 | Small Medic Kit | +2 pontos de cura | Básico |
| medicine8 | Epinephrine | Revive inconsciente | Emergência |

### Categoria: 🎒 Equipamentos

#### Mochilas (7 tipos)

| ID | Nome | +Slots | Raridade |
|----|------|--------|----------|
| backpack1 | Assault Pack (ACU) | +4 | Comum |
| backpack2 | Alice Pack | +6 | Comum |
| backpack3 | Czech Backpack | +8 | Raro |
| backpack4 | Coyote Backpack | +6 | Comum |
| backpack5 | Hunting Backpack | +5 | Comum |
| backpack6 | Boulder Backpack | +3 | Comum |
| backpack7 | Tortilla Backpack | +7 | Raro |

#### Capacetes (7 tipos)

| ID | Nome | Proteção | Raridade |
|----|------|----------|----------|
| helmet1 | Special Forces Helmet | ⭐⭐⭐⭐⭐ | Lendário |
| helmet2 | Military Helmet | ⭐⭐⭐⭐ | Raro |
| helmet3 | Motorcycle Helmet | ⭐⭐ | Comum |
| helmet4 | SWAT Helmet | ⭐⭐⭐⭐ | Raro |
| helmet5 | Welder Helmet | ⭐⭐ | Comum |
| helmet6 | Cap | ⭐ | Comum |
| helmet7 | Ushanka | ⭐⭐ | Comum |

#### Coletes (2 tipos)

| ID | Nome | Proteção | Raridade |
|----|------|----------|----------|
| vest1 | Police Vest | ⭐⭐⭐ | Comum |
| vest2 | Military Vest | ⭐⭐⭐⭐ | Raro |

#### Roupas (9 tipos)

| ID | Nome | Efeito | Raridade |
|----|------|--------|----------|
| clothing1 | Civilian Clothing | Nenhum | Comum |
| clothing2 | Survivor Clothing | +2°C | Comum |
| clothing3 | Ghillie Suit | Camuflagem | Lendário |
| clothing4 | Camouflage Clothing | +1°C | Comum |
| clothing5 | Military Clothing | +3°C | Raro |
| clothing6 | Police Clothing | +1°C | Comum |
| clothing7 | Medical Clothing | +5% cura | Raro |
| clothing8 | Hunter Clothing | +2°C | Comum |
| clothing9 | Rocker Clothing | Estilo | Raro |

### Categoria: 🔧 Ferramentas

| ID | Nome | Função | Raridade |
|----|------|--------|----------|
| toolbelt1 | Night Vision Goggles | Visão noturna | Lendário |
| toolbelt2 | Infrared Goggles | Detectar calor | Lendário |
| toolbelt3 | Map | Abrir mapa | Comum |
| toolbelt4 | Toolbox | Reparar veículos | Comum |
| toolbelt5 | Radio Device | Chat rádio | Comum |
| toolbelt6 | Watch | Ver horário | Comum |
| toolbelt7 | Compass | Navegação | Comum |
| toolbelt8 | GPS | Navegação avançada | Raro |
| toolbelt9 | Box of Matches | Fazer fogueira | Comum |

### Categoria: 🛠️ Especiais

| ID | Nome | Função | Uso |
|----|------|--------|-----|
| item1 | Wood Pile | Fazer fogueira | Sobrevivência |
| item2 | Wire Fencing | Material de construção | Defesa |
| item3 | Mine | Armadilha explosiva | Defesa |
| item4 | Car Key | Trancar veículo | Segurança |
| item5 | Tent | Base temporária | Acampamento |
| item6 | C4 | Explosivo | Demolição |
| item7 | Red Flare | Sinalização | Emergência |
| item8 | Green Flare | Sinalização | Segurança |
| item9 | Full Gas Canister | Reabastecer | Veículos |
| item10 | Empty Gas Canister | Recipiente vazio | Coleta |
| item11 | Blue Flare | Sinalização | Neutro |
| item12 | Wire Fence Kit | Construir cerca | Defesa |
| item13 | Jerry Can | Combustível extra | Veículos |
| item14 | Sandbag | Fortificação | Defesa |

### Categoria: 🚗 Peças de Veículos

| ID | Nome | Função | Raridade |
|----|------|--------|----------|
| vehiclepart1 | Engine | Motor do veículo | Raro |
| vehiclepart2 | Rotor Assembly | Helicópteros | Raro |
| vehiclepart3 | Tire | Pneu | Comum |
| vehiclepart4 | Tank | Tanque de combustível | Raro |
| vehiclepart5 | Scrap Metal | Material de reparo | Comum |

---

## 🔧 Tecnologias e Dependências

### Plataforma Base

**Multi Theft Auto: San Andreas (MTA:SA)**
- Versão Requerida: 1.5.x ou superior
- Multiplayer mod para GTA San Andreas
- Scripting em Lua 5.1

### Linguagens e Frameworks

**Lua**
- Versão: 5.1
- Linguagem principal de scripting
- Client-side e Server-side

**XML**
- Arquivos meta.xml para configuração
- Definição de recursos e dependências

### Banco de Dados

**SQLite (Interno MTA)**
- Armazenamento de contas
- Dados persistentes de jogadores
- Estatísticas e logs

**Registry (Opcional)**
- Dados temporários
- Cache de sessão

### Recursos Gráficos

**DirectX 9**
- Shaders (HLSL)
- Renderização de efeitos
- Texturas customizadas

**Modelos 3D**
- Formato: DFF/TXD (GTA SA)
- 70+ modelos customizados
- 16 skins de zumbis

### Áudio

**Formatos Suportados**:
- MP3 (música ambiente)
- WAV (efeitos sonoros)
- OGG (vozes e efeitos)

**Sistema de Som 3D**:
- Posicionamento espacial
- Atenuação por distância
- Efeitos Doppler

### Dependências de Recursos

**Ordem de Carregamento**:
```
1. dayzepoch (núcleo)
2. dayzmap (mapa)
3. e_login (autenticação)
4. e_downloader (downloads)
5. e_textures (texturas)
6. noglitch (segurança)
7. [outros recursos auxiliares]
```

### Compatibilidade

**Sistema Operacional (Servidor)**:
- ✅ Windows Server 2012+
- ✅ Linux (Ubuntu 18.04+, Debian 9+)
- ✅ CentOS 7+

**Sistema Operacional (Cliente)**:
- ✅ Windows 7/8/10/11
- ✅ GTA San Andreas instalado

**Hardware Mínimo (Servidor)**:
- CPU: Dual-core 2.0 GHz
- RAM: 2 GB
- Armazenamento: 1 GB
- Rede: 10 Mbps upload

**Hardware Recomendado (Servidor)**:
- CPU: Quad-core 3.0+ GHz
- RAM: 4+ GB
- Armazenamento: 2+ GB SSD
- Rede: 50+ Mbps upload

**Hardware Mínimo (Cliente)**:
- CPU: Dual-core 2.0 GHz
- RAM: 2 GB
- GPU: 512 MB VRAM (DirectX 9)
- Armazenamento: 5 GB

**Hardware Recomendado (Cliente)**:
- CPU: Quad-core 3.0+ GHz
- RAM: 4+ GB
- GPU: 1+ GB VRAM (DirectX 9)
- Armazenamento: 10 GB

---

## ⚡ Performance e Otimização

### Otimizações Implementadas

#### 1. 🧟 Sistema de Zumbis

**Limite Dinâmico**:
```lua
Máximo: 50 zumbis simultâneos
Spawn baseado em proximidade de jogadores
Despawn automático quando longe
```

**IA Otimizada**:
- Estados simples (Idle/Chase/Attack)
- Atualização a cada 100ms (não por frame)
- Pathfinding simplificado

**Streaming**:
- Zumbis além de 150m não processam IA
- Sincronização limitada a jogadores próximos

#### 2. 🎒 Sistema de Inventário

**Cache Local**:
- Dados carregados na memória cliente
- Sincronização apenas quando alterado
- Reduz tráfego de rede

**Lazy Loading**:
- Imagens de itens carregadas sob demanda
- Pré-cache de itens frequentes

#### 3. 🚗 Sistema de Veículos

**Streaming Inteligente**:
- Veículos distantes não sincronizados
- Limite de veículos spawneados (por jogador)
- Despawn automático de veículos abandonados

**Otimização de Física**:
- Física desativada para veículos parados
- Simplificação de colisões

#### 4. 📦 Sistema de Loot

**Spawn Controlado**:
- Máximo de itens por área
- Respawn apenas quando necessário
- Cleanup de itens não coletados (timeout)

**Streaming de Objetos**:
- Loot só aparece próximo a jogadores
- Radius de 100m

#### 5. 🗺️ Sistema de Mapa

**Renderização Otimizada**:
- Mapa em textura única
- Marcadores limitados (50 max)
- Atualização a cada 1 segundo

#### 6. 💾 Banco de Dados

**Salvamento Inteligente**:
- Auto-save a cada 5 minutos
- Save on quit (logout)
- Transactions em batch

**Indexação**:
- Índices em campos frequentes
- Query optimization
- Cache de consultas comuns

#### 7. 🌐 Rede

**Compressão de Dados**:
- Sincronização delta (apenas mudanças)
- Agrupamento de pacotes
- Limite de taxa de envio

**Priorização**:
- Dados críticos (saúde, posição) prioritários
- Dados secundários (chat, stats) atrasados

### Benchmarks

**Servidor (100 jogadores)**:
- CPU: ~30-50% (Quad-core 3.0 GHz)
- RAM: ~1.5 GB
- Rede Upload: ~5-10 Mbps
- TPS (Ticks por segundo): 60 (estável)

**Cliente**:
- FPS: 60+ (hardware recomendado)
- RAM: ~800 MB (MTA + recursos)
- VRAM: ~400 MB
- Ping: <100ms (ideal)

### Dicas de Performance

**Para Administradores**:

1. **Limitar Zumbis**:
   ```lua
   -- Em configurações do servidor
   maxZombies = 30 -- Reduzir para servidores fracos
   ```

2. **Restart Periódico**:
   - Reiniciar servidor a cada 6-12 horas
   - Limpa memória e bugs acumulados

3. **Monitoramento**:
   ```lua
   /debugscript 3 -- Ver performance de scripts
   /showfps -- Mostrar FPS
   ```

4. **Otimizar Banco de Dados**:
   - Backup e vacuum periódico
   - Excluir contas inativas (30+ dias)

**Para Jogadores**:

1. **Reduzir Configurações Gráficas**:
   - Desativar sombras
   - Reduzir distância de visão
   - Desativar efeitos pós-processamento

2. **Fechar Programas em Segundo Plano**:
   - Liberar RAM
   - Priorizar MTA no gerenciador de tarefas

3. **Usar Conexão Estável**:
   - Cabo Ethernet preferencial
   - Fechar downloads/streams

4. **Limpar Cache**:
   - Excluir arquivos temporários MTA periodicamente

### Monitoramento de Performance

**Comandos de Debug** (Admin):
```lua
/debugscript 1  -- Erro básico
/debugscript 2  -- Erro + warnings
/debugscript 3  -- Debug completo
/showfps        -- Mostrar FPS
/shownetstat    -- Estatísticas de rede
```

**Logs**:
- `server.log` - Logs do servidor
- `clientscript.log` - Erros cliente
- `dblog.log` - Operações banco de dados

---

## 📚 Documentação Adicional

### Arquivos Relacionados

- 📄 [INSTALACAO.md](INSTALACAO.md) - Guia completo de instalação
- 📄 [COMANDOS.md](COMANDOS.md) - Lista de comandos e atalhos
- 📄 [README.md](README.md) - Visão geral do projeto

### Links Úteis

- 🌐 [MTA:SA Wiki](https://wiki.multitheftauto.com/)
- 🌐 [Fórum MTA](https://forum.multitheftauto.com/)
- 🌐 [Documentação Lua](https://www.lua.org/manual/5.1/)

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
- Contribuidores

### Licença

Este gamemode é distribuído sob a licença incluída no arquivo `LICENSE`.

### Suporte

Para reportar bugs, sugestões ou dúvidas:
- Abrir issue no repositório
- Contatar administradores do servidor
- Consultar fórum da comunidade

---

**Versão do Documento**: 1.0.0  
**Última Atualização**: 2024  
**Status**: ✅ Completo e Funcional

---

*Documentação criada e mantida pela comunidade MTA DayZ Brasil* 🇧🇷
