# 🛠️ MTA DayZ — Prévia Técnica para Equipes de Desenvolvimento

> **Documento interno / para parceiros e equipes grandes.**
> Este documento apresenta uma análise completa de todos os sistemas desenvolvidos no servidor MTA DayZ em desenvolvimento, com descrição técnica de cada módulo, arquitetura, fluxo de dados e pontos de extensão.

---

## 📐 Arquitetura Geral

O projeto é um **gamemode completo de DayZ para o Multi Theft Auto (MTA: SA)**, escrito inteiramente em **Lua** com shaders em **HLSL/FX (DirectX 9)**. A arquitetura segue o modelo cliente-servidor nativo do MTA, com separação clara entre lógica de servidor e renderização de cliente.

```
┌─────────────────────────────────────────────────────────┐
│                   MTA:SA Server                          │
│  ┌──────────────┐  ┌─────────────┐  ┌────────────────┐  │
│  │  dayzepoch   │  │  e_missions │  │    e_shop      │  │
│  │  (core)      │  │  (missões)  │  │  (economia)    │  │
│  └──────────────┘  └─────────────┘  └────────────────┘  │
│  ┌──────────────┐  ┌─────────────┐  ┌────────────────┐  │
│  │  e_admin     │  │  e_radar    │  │  e_login       │  │
│  └──────────────┘  └─────────────┘  └────────────────┘  │
└─────────────────────────────────────────────────────────┘
              ↕  (MTA event system / triggerEvent)
┌─────────────────────────────────────────────────────────┐
│                   MTA:SA Client                          │
│  ┌───────────────┐  ┌──────────┐  ┌──────────────────┐  │
│  │ e_dynamicsky  │  │  e_gps   │  │  e_scoreboard    │  │
│  │ e_textures    │  │  e_map   │  │  particles       │  │
│  │ e_downloader  │  │          │  │  noglitch        │  │
│  └───────────────┘  └──────────┘  └──────────────────┘  │
└─────────────────────────────────────────────────────────┘
```

**Padrões de design utilizados:**
- **Server-authoritative:** toda validação de gameplay acontece no servidor.
- **Event-driven:** comunicação via `addEvent` / `triggerEvent` / `triggerServerEvent` / `triggerClientEvent`.
- **Model replacement:** assets customizados carregados via substituição de modelos GTA:SA.
- **Collision-sphere interaction:** objetos interativos usam esferas de colisão invisíveis.
- **Element data:** estado persistente de jogadores e veículos armazenado em element data.

---

## 📦 Módulos — Análise Detalhada

---

### 1. `dayzepoch` — Core do Gamemode (v0.3r2)

**Função:** Núcleo central do servidor. Coordena todos os subsistemas de sobrevivência.

#### Arquivos principais
| Arquivo | Lado | Responsabilidade |
|---|---|---|
| `core.lua` | Servidor | Inicialização, eventos globais, spawn de jogadores |
| `core_client.lua` | Cliente | HUD, sincronização de estado, efeitos visuais |
| `accounts.lua` | Servidor | Persistência de contas e stats dos jogadores |
| `zombies_s.lua` | Servidor | Spawn, pathfinding e combate de zumbis |
| `zombies_c.lua` | Cliente | Animações e sons de zumbis |
| `vehicles.lua` | Servidor | Spawn e gerenciamento de veículos |
| `inventory.lua` | Cliente | Interface e lógica de inventário |
| `lootspawns.lua` | Servidor | Posições e tabelas de loot |
| `pickups.lua` | Servidor | Coleta de itens no mundo |
| `menu_client.lua` | Cliente | Menu principal |

#### Sistema de Inventário
- 6 categorias: `weapons`, `ammo`, `food`, `equipment`, `medicine`, `tools`
- Atributos por item: `size`, `weight`, `maxStack`
- Slots: mochila, colete, toolbelt (até 10 slots visíveis)
- Operações: drag-and-drop, drop no chão, uso rápido

#### Sistema de Zumbis
- Limite de **50 zumbis simultâneos** no servidor
- 15 skins diferentes de zumbi
- Lógica de spawn por zona e por proximidade de jogadores
- Tabela de drop de itens ao matar

#### Stats do Jogador (persistidos em `accounts.lua`)
```lua
humanity        -- alinhamento (bandido/herói)
kills_zombie    -- zumbis abatidos
kills_bandit    -- bandidos abatidos
kills_murder    -- assassinatos de jogadores
blood           -- vida (0-12000)
food            -- fome
thirst          -- sede
broken_bones    -- status de ossos quebrados
bleeding        -- status de sangramento
cold            -- hipotermia
```

#### Sistema de Armas
- 28+ tipos de arma mapeados
- 10 tipos de munição
- Controle de disparo customizado (cadência, recuo)
- Compatibilidade com sons customizados (30+ arquivos `.ogg`)

#### Assets incluídos
- 50+ skins de personagem (DFF/TXD)
- 90+ modelos de veículo e item
- 100+ ícones de UI
- Scripts em `/scripts/` para mecânicas adicionais

---

### 2. `dayzmap` — Módulo de Mapa

**Função:** Define o mundo de jogo (dimensões, gravidade, limites, tempo).

- **Capacidade:** 128 jogadores
- **Gravidade:** 0.008 (levemente reduzida para gameplay de sobrevivência)
- **Tempo fixo:** 12:00 (controlado separadamente pelo `e_dynamicsky`)
- **Dimensões do mundo:** 6000×6000 unidades
- Contém extensões de script do Map Editor para leitura do `.map`

---

### 3. `e_admin` — Painel Administrativo

**Função:** Interface completa de administração em-jogo.

#### GUIs disponíveis
| Interface | Função |
|---|---|
| `main_gui.lua` | Dashboard principal |
| `kick_gui.lua` | Expulsar jogadores |
| `ban_gui.lua` | Banir (1h / 1 dia / 1 semana / permanente) |
| `mute_gui.lua` | Mutar jogadores (5 minutos) |
| `weather_gui.lua` | Controlar clima em tempo real |
| `dayzstats_gui.lua` | Ver stats DayZ de qualquer jogador |
| `warp_gui.lua` | Teleportar admin/jogadores |
| `message_gui.lua` | Broadcast de mensagens |
| `give_gui.lua` | Dar itens a jogadores |
| `vehicle_gui.lua` | Spawnar veículos |

#### Sistema de Permissões
- Validação por grupo ACL **e** por element data de flag de admin
- Identificação de jogadores por IP e Serial MTA
- Logs coloridos no chat com nome do admin, alvo e motivo

#### Modo Superman
- God mode server-side + client-side
- Ativável por admin com um clique

---

### 4. `e_downloader` — Carregamento de Assets

**Função:** Download e cache de modelos/texturas customizados sob demanda.

#### Modelos carregados
- **Objetos de mapa:** tendas, fogueiras, torres de controle, muros, quartéis (14 tipos)
- **Itens especiais:** pára-quedas, minas terrestres, cofres (intacto/destruído)
- **Skins:** variantes de skin de admin
- **Veículos:** 10+ modelos (helicópteros, HMMWV, motocicletas, etc.)

#### Otimizações
- Cache client-side para assets de alta frequência
- Cache server-side desativado para modelos menos comuns (economia de memória)

---

### 5. `e_dynamicsky` — Céu Dinâmico (v2.1.7)

**Função:** Renderização de céu realista com ciclo solar/lunar.

#### Shaders FX
| Shader | Efeito |
|---|---|
| Troposphere | Camada base do céu com gradiente |
| Stratosphere | Camada superior com atmosfera |
| Bottom layer | Horizonte/névoa |
| Clear effect | Limpeza de artefatos |

#### Sistema Solar/Lunar
- Posicionamento de sol e lua baseado em tempo real do servidor
- Ciclo lunar de **21 fases** com texturas individuais
- Sistema de nuvens com normal mapping e espalhamento de 700 unidades
- Escala do domo: `0.125` sobre o modelo 15057

#### Funções exportadas
```lua
getDynamicSunVector()   -- vetor de direção do sol
getDynamicMoonVector()  -- vetor de direção da lua
getMoonPhaseValue()     -- fase atual da lua (0–20)
```

---

### 6. `e_gps` — GPS (estilo Arma II)

**Função:** Minimapa em tempo real com tracking de aliados.

#### Especificações técnicas
- Render target: **180×130 px**
- Frame total: **210×200 px**
- Área de exibição: **168×120 px**
- Raio de exibição de aliados: **600 unidades**
- Conversão: mundo 6000×6000 → mapa 3072×3072 px

#### Funcionalidades
- Indicador de posição do jogador (vermelho)
- Indicador de membros da gangue (azul)
- Renderização rotacionada com câmera relativa
- **Requer item** `toolbelt2` no inventário para ativar

---

### 7. `e_login` — Autenticação

**Função:** Interface de login e registro de contas.

#### Componentes GUI
- Janela de login: usuário + senha + botões entrar/registrar
- Janela de registro: usuário + e-mail + senha + confirmação + validação
- Janela de erro com mensagem descritiva
- Combobox de seleção de idioma

#### Funcionalidades extras
- 6 opções de crosshair customizável (via shader)
- Renderização de crosshair via shader DirectX
- Dimensão de mapa customizada para a tela de login
- Sistema de persistência de conta

---

### 8. `e_map` — Mapa Avançado (Maximap)

**Função:** Substituição do mapa padrão (F11) com controle completo via API.

#### Funções exportadas (20+)
```lua
-- Visibilidade
isPlayerMapVisible()
setPlayerMapVisible(bool)

-- Conversão de coordenadas
getMapFromWorldPosition(x, y)
getWorldFromMapPosition(mx, my)

-- Zoom
setMapMinZoom(value)
setMapMaxZoom(value)
setMapZoomFactor(factor)
setMapZoomRate(rate)

-- Navegação
setMapBoundingBox(x1, y1, x2, y2)
setMapMovementSpeed(speed)

-- Personalização
setMapImage(texture)
setMapColor(r, g, b, a)
setMapBlipsVisible(bool)
```

#### Assets
- Imagem do mapa mundial (PNG de alta resolução)
- 64 ícones de blip para marcadores no mapa

---

### 9. `e_missions` — Sistema de Missões

**Função:** Spawn automático de missões cooperativas/PvP no mundo.

#### Tipos de missão
| Missão | Locais | Descrição |
|---|---|---|
| Caixa de Suprimentos Capturada | 12 pontos | Defenda/capture uma caixa de supply |
| Aquisição de Helicóptero | 5 pontos | Helicóptero com condição de peças aleatória |

#### Configuração
- Mínimo de **1 jogador** para iniciar missão
- Intervalo de spawn: **60 minutos**
- Duração de missão ativa: **30 minutos**
- **20+ itens** de recompensa com probabilidade de drop

---

### 10. `e_radar` — Radar Administrativo (Area 51)

**Função:** Tracking em tempo real de jogadores para administradores.

#### Dados rastreados por jogador
- Nome e ID
- Status de veículo (nome do veículo ou "a pé")
- Zona/cidade atual
- Arma equipada
- Nível de colete/armadura
- Intervalo de atualização: **60 segundos**

#### Modos de uso
- Monitoramento de jogador individual
- Visualização em lista de todos os jogadores

---

### 11. `e_scoreboard` — Placar (DirectX v2.7.1)

**Função:** Placar dinâmico com colunas customizáveis.

#### Temas disponíveis
- Marrom (padrão)
- Azul
- Verde

#### Funcionalidades
- Toggle por tecla Tab (configurável)
- Sistema de prioridade de colunas (até 500 slots)
- Display de informações do servidor/gamemode
- Toggle de visibilidade de teams

#### Funções exportadas (15+)
```lua
addScoreboardColumn(name, resource, width, priority)
removeScoreboardColumn(name)
clearScoreboardColumn(name)
resetScoreboardColumn(name)
setScoreboardSortBy(column)
forceScoreboardTheme(theme)
setScoreboardTeamsVisible(bool)
getScoreboardPosition()
getScoreboardSize()
forceScoreboardUpdate()
```

---

### 12. `e_shop` — Economia e Loja

**Função:** Sistema de compra de itens e veículos com moeda in-game.

#### Sistema de Veículos
- Spawn com slots de inventário configuráveis
- Estado de peças: motor, rotor, pneus, tanque, sucata
- Nível de combustível persistido
- Estado de dano rastreado
- Esfera de colisão invisível para interação

#### Sistema de Itens
- Dedução de moeda ao comprar
- Herança de configuração por tipo (veículo pai/filho)
- Dimensão de mapa customizada para a loja

---

### 13. `e_textures` — Texturas de Terreno (Shaders)

**Função:** Substituição das texturas de terreno por versões customizadas via pixel shader.

#### Shader
- 1 arquivo FX aplicado a 50+ texturas de terreno
- Blending desert/grass via overlay
- Categorias de textura:
  - **Deserto:** areia, terra, superfícies rochosas
  - **Grama:** variações de vegetação
  - **Estradas/concreto:** vias e superfícies urbanas
  - **Especiais:** plantações, quintais, superfícies únicas

---

### 14. `noglitch` — Anti-Glitch

**Função:** Prevenção de glitches de movimento via colisões de mapa.

- Malha de colisão definida em `addon_antiglitch.map`
- Extensões de script do Map Editor (servidor + cliente)
- Bloqueia escalar paredes, cortar terreno e glitches de parkour

---

### 15. `particles` — Sistema de Partículas

**Função:** Efeitos visuais ambientais e de combate (85+ tipos).

#### Categorias
| Categoria | Exemplos |
|---|---|
| Ambiental | Sangue, explosões, fogo, fumaça, água |
| Combate | Flash de tiro, fumaça de arma, estojos, faísca |
| Veículo | Superaquecimento, escapamento, poeira de heli, detritos |
| Clima | Chuva, névoa, neblina |
| Especial | Propulsão de jetpack, chamas de molotov, gás lacrimogênio |

#### Implementação
- Definição via XML (`partlist.xml`)
- Substituição de modelo DFF para renderização
- Partículas anexadas a objetos/jogadores via colisão

---

## 🔗 Fluxo de Dependências entre Módulos

```
dayzepoch ──── e_downloader   (assets necessários)
dayzepoch ──── e_login        (autenticação antes de entrar)
dayzepoch ──── e_shop         (economia integrada ao core)
dayzepoch ──── e_missions     (missões disparam eventos do core)
dayzepoch ──── particles      (efeitos visuais de combate)
dayzepoch ──── noglitch       (mapa de colisão carregado junto)
e_admin   ──── e_radar        (radar é subferramenta do admin)
e_map     ──── e_gps          (GPS usa funções exportadas do mapa)
e_dynamicsky ─ dayzmap        (céu sincronizado com o mapa)
e_scoreboard ─ dayzepoch      (colunas populadas com stats do core)
e_textures ─── dayzmap        (shaders aplicados ao mapa carregado)
```

---

## ⚙️ Requisitos de Instalação

```xml
<!-- ACL (acl.xml) -->
<object name="resource.dayzepoch"></object>
<object name="resource.e_login"></object>

<!-- mtaserver.conf -->
<resource src="dayzepoch"     startup="1" protected="0" />
<resource src="e_login"       startup="1" protected="0" />
<resource src="dayzmap"       startup="1" protected="0" />
<resource src="admin"         startup="1" protected="0" /> <!-- recurso admin padrão do MTA -->
<resource src="e_admin"       startup="1" protected="0" />
<resource src="e_scoreboard"  startup="1" protected="0" />
<resource src="e_downloader"  startup="1" protected="0" />
<resource src="e_shop"        startup="1" protected="0" />
<resource src="e_gps"         startup="1" protected="0" />
<resource src="e_textures"    startup="1" protected="0" />
<resource src="e_map"         startup="1" protected="0" />
<resource src="e_radar"       startup="1" protected="0" />
<resource src="e_dynamicsky"  startup="1" protected="0" />
<resource src="particles"     startup="1" protected="0" />
<resource src="noglitch"      startup="1" protected="0" />
```

---

## 📊 Resumo Quantitativo

| Categoria | Quantidade |
|---|---|
| Módulos/recursos | 15 |
| Arquivos Lua | 40+ |
| Shaders FX | 6 |
| Modelos 3D custom | 90+ |
| Skins de personagem | 50+ |
| Ícones de UI | 100+ |
| Tipos de partícula | 85+ |
| Texturas de terreno custom | 50+ |
| Tipos de arma suportados | 28+ |
| Tipos de munição | 10 |
| Locais de spawn de veículo | 100+ |
| Locais de missão | 17 |
| Capacidade máxima de jogadores | 128 |

---

## 🚧 Status de Desenvolvimento

> O servidor está em desenvolvimento ativo. Todos os módulos listados estão implementados e funcionais. Expansões em andamento incluem melhorias no sistema de missões, economia expandida e novas zonas de mapa.

---

*Documento gerado para análise técnica interna e parceiros de desenvolvimento.*
