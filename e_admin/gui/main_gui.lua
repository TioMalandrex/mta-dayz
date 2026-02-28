function gui()
	local screenW, screenH = guiGetScreenSize()
	window = guiCreateWindow((screenW - 616) / 2, (screenH - 518) / 2, 616, 518, "Painel Admin MTA DayZ por kaasis", false)
	guiWindowSetMovable(window,false)
	guiWindowSetSizable(window, false)
	guiSetAlpha(window, 0.85)

	guiSetVisible(window,false)

	tabpanelAdmin = guiCreateTabPanel(10, 26, 596, 482, false, window)

	tabPlayers = guiCreateTab("Jogadores", tabpanelAdmin)

	gridlistPlayers1 = guiCreateGridList(10, 10, 119, 438, false, tabPlayers)
	guiGridListAddColumn(gridlistPlayers1, "Jogadores", 0.7)
	guiGridListAddRow(gridlistPlayers1)
	guiGridListSetItemText(gridlistPlayers1, 0, 1, "player1", false, false)

	hiddenGridlist = guiCreateGridList(10, 10, 119, 438, false, tabPlayers)
	guiSetProperty(hiddenGridlist, "AlwaysOnTop", "True")
	guiSetAlpha(hiddenGridlist, 0.00)
	guiSetVisible(hiddenGridlist,false)

	buttonDutyMode = guiCreateButton(138, 16, 89, 15, "Modo de Serviço", false, tabPlayers)
	guiSetFont(buttonDutyMode, "default-bold-small")
	labelDutyText = guiCreateLabel(237, 16, 22, 15, "OFF", false, tabPlayers)
	guiSetFont(labelDutyText, "default-small")
	guiLabelSetColor(labelDutyText, 252, 0, 0)
	guiLabelSetVerticalAlign(labelDutyText, "center")

	labelPlayer = guiCreateLabel(144, 50, 272, 14, "Jogador:", false, tabPlayers)
	guiSetFont(labelPlayer, "default-bold-small")
	guiLabelSetColor(labelPlayer, 252, 0, 0)

	labelName = guiCreateLabel(154, 71, 262, 13, "Nome: N/A", false, tabPlayers)
	labelIP = guiCreateLabel(154, 90, 262, 16, "IP: N/A", false, tabPlayers)
	labelSerial = guiCreateLabel(154, 109, 262, 18, "Serial: N/A", false, tabPlayers)
	labelUsername = guiCreateLabel(154, 128, 262, 17, "Nome da Conta: N/A", false, tabPlayers)
	labelCountry = guiCreateLabel(154, 147, 262, 15, "Versão: N/A", false, tabPlayers)

	labelGame = guiCreateLabel(144, 168, 272, 16, "Jogo:", false, tabPlayers)
	guiSetFont(labelGame, "default-bold-small")
	guiLabelSetColor(labelGame, 252, 0, 0)

	labelBlood = guiCreateLabel(154, 189, 262, 15, "Sangue: N/A", false, tabPlayers)
	labelMurders = guiCreateLabel(154, 208, 262, 21, "Assassinatos: N/A", false, tabPlayers)
	labelBanditsKilled = guiCreateLabel(154, 227, 262, 19, "Bandidos Mortos: N/A", false, tabPlayers)
	labelZombiesKilled = guiCreateLabel(154, 246, 262, 18, "Zumbis Mortos: N/A", false, tabPlayers)
	labelHeadshots = guiCreateLabel(154, 265, 262, 18, "Tiros na Cabeça: N/A", false, tabPlayers)
	labelTemperature = guiCreateLabel(154, 284, 262, 17, "Temperatura: N/A", false, tabPlayers)
	labelHumanity = guiCreateLabel(154, 304, 262, 15, "Humanidade: N/A", false, tabPlayers)
	labelBackPackSlots = guiCreateLabel(154, 323, 262, 16, "Espaços da Mochila: N/A", false, tabPlayers)
	labelSkin = guiCreateLabel(154, 342, 262, 17, "Skin: N/A", false, tabPlayers)
	labelArea = guiCreateLabel(154, 361, 262, 17, "Área: Desconhecida", false, tabPlayers)

	labelVehicleHealth = guiCreateLabel(154, 422, 263, 16, "Saúde do Veículo: 0%", false, tabPlayers)
	labelVehicleName = guiCreateLabel(154, 403, 263, 14, "Veículo: N/A", false, tabPlayers)
	labelVehicle = guiCreateLabel(144, 382, 273, 14, "Veículo:", false, tabPlayers)
	guiSetFont(labelVehicle, "default-bold-small")
	guiLabelSetColor(labelVehicle, 252, 0, 0)

	buttonReportMessages = guiCreateButton(465, 10, 119, 15, "mensagens de relatório", false, tabPlayers)
	guiSetFont(buttonReportMessages, "default-bold-small")
	guiSetEnabled(buttonReportMessages,false)

	buttonKick = guiCreateButton(423, 54, 72, 17, "expulsar", false, tabPlayers)
	buttonBan = guiCreateButton(499, 54, 72, 17, "banir", false, tabPlayers)
	buttonMute = guiCreateButton(423, 75, 72, 17, "silenciar", false, tabPlayers)
	buttonFreeze = guiCreateButton(499, 75, 72, 17, "congelar", false, tabPlayers)

	buttonSpectate = guiCreateButton(423, 101, 148, 18, "espectador", false, tabPlayers)
	guiSetEnabled(buttonSpectate,false)

	buttonWarpTo = guiCreateButton(423, 128, 148, 18, "ir até jogador", false, tabPlayers)
	buttonWarpPlayerTo = guiCreateButton(423, 151, 148, 18, "levar jogador para..", false, tabPlayers)
	buttonSetDayzStats = guiCreateButton(423, 177, 148, 18, "definir stats dayz", false, tabPlayers)
	buttonChangeWeather = guiCreateButton(423, 200, 148, 18, "mudar clima", false, tabPlayers)
	buttonKill = guiCreateButton(423, 223, 148, 18, "matar jogador", false, tabPlayers)

	buttonItems = guiCreateButton(423, 246, 72, 17, "itens", false, tabPlayers)
	buttonVehicles = guiCreateButton(499, 246, 72, 17, "veículos", false, tabPlayers)

	buttonGlobalMessage = guiCreateButton(424, 342, 148, 18, "enviar mensagem global", false, tabPlayers)

	buttonFix = guiCreateButton(424, 379, 148, 18, "Consertar", false, tabPlayers)
	guiSetFont(buttonFix, "default-bold-small")
	buttonDestroy = guiCreateButton(424, 400, 148, 18, "Destruir", false, tabPlayers)
	guiSetFont(buttonDestroy, "default-bold-small")
	buttonBlow = guiCreateButton(424, 421, 148, 18, "Explodir", false, tabPlayers)
	guiSetFont(buttonBlow, "default-bold-small")

	tabBans = guiCreateTab("Banimentos", tabpanelAdmin)
	guiSetEnabled(tabBans, false)

	gridlistBans = guiCreateGridList(10, 10, 592, 401, false, tabBans)
	guiGridListAddColumn(gridlistBans, "Nome", 0.2)
	guiGridListAddColumn(gridlistBans, "IP", 0.2)
	guiGridListAddColumn(gridlistBans, "Serial", 0.2)
	guiGridListAddColumn(gridlistBans, "Por", 0.2)
	guiGridListAddColumn(gridlistBans, "Motivo", 0.2)
	buttonBanIP = guiCreateButton(10, 421, 81, 22, "Banir IP", false, tabBans)
	buttonBanSerial = guiCreateButton(95, 421, 81, 22, "Banir Serial", false, tabBans)
	buttonUnbanSerial = guiCreateButton(406, 421, 104, 22, "Desbanir Serial", false, tabBans)
	buttonUnbanIP = guiCreateButton(298, 421, 104, 22, "Desbanir IP", false, tabBans)
	buttonUnban = guiCreateButton(190, 421, 104, 22, "Desbanir", false, tabBans)
	buttonRefresh = guiCreateButton(525, 421, 77, 22, "Atualizar", false, tabBans)

	tabSuperAdmin = guiCreateTab("SuperAdmin", tabpanelAdmin)
	guiSetEnabled(tabSuperAdmin, false)

	function getGridListInfo()
		local item = guiGridListGetSelectedItem(gridlistPlayers1)
		if (guiGridListGetSelectedItem(gridlistPlayers1) ~= -1) then
			local selectedPlayer = getPlayerFromName(guiGridListGetItemText(gridlistPlayers1,item,1))
			triggerServerEvent("getPlayerInfo",localPlayer,selectedPlayer)
			function getPlayerInfoCallBack(playerName,playerSerial,playerIP,playerVersion,playerAccount,isMuted)
				guiSetText(labelName,"Nome: "..string.gsub(playerName, "#%x%x%x%x%x%x", ""))
				guiSetText(labelIP,"IP: "..playerIP)
				guiSetText(labelSerial,"Serial: "..playerSerial)
				guiSetText(labelUsername,"Nome da Conta: "..playerAccount)
				guiSetText(labelCountry,"Versão: "..playerVersion)

				guiSetText(labelBlood,"Sangue: "..getElementData(selectedPlayer,"blood") or 0)
				guiSetText(labelMurders,"Assassinatos: "..getElementData(selectedPlayer,"murders") or 0)
				guiSetText(labelBanditsKilled,"Bandidos Mortos: "..getElementData(selectedPlayer,"banditskilled") or 0)
				guiSetText(labelZombiesKilled,"Zumbis Mortos: "..getElementData(selectedPlayer,"zombieskilled") or 0)
				guiSetText(labelHeadshots,"Tiros na Cabeça: "..getElementData(selectedPlayer,"headshots") or 0)
				guiSetText(labelTemperature,"Temperatura: "..getElementData(selectedPlayer,"temperature") or 0)
				guiSetText(labelHumanity,"Humanidade: "..getElementData(selectedPlayer,"humanity") or 0)
				guiSetText(labelBackPackSlots,"Espaços da Mochila: "..getElementData(selectedPlayer,"MAX_Slots") or 0)
				
				guiSetText(labelSkin,"Skin: "..getElementModel(selectedPlayer))
				local x, y, z = getElementPosition(selectedPlayer)
				local location = getZoneName(x,y,z)
				local city = getZoneName(x,y,z,true)
				guiSetText(labelArea,"Área: "..location.." ("..city..")")

				local driving, vehicle = isPedDrivingVehicle(selectedPlayer)
				if driving then
					local health = getElementHealth(vehicle) - 250;
					local currentHealth = health / 750 * 100;
					guiSetText(labelVehicleName,"Veículo: "..getVehicleName(vehicle))
					guiSetText(labelVehicleHealth,"Saúde do Veículo: "..currentHealth.."%")
				else
					guiSetText(labelVehicleName,"Veículo: A Pé")
				end

				if isElementFrozen(selectedPlayer) then
					guiSetText(buttonFreeze,"descongelar")
				else
					guiSetText(buttonFreeze,"congelar")
				end
				if isMuted then
					unMuteText()
				else
					muteText()
				end
			end
			addEvent("getPlayerInfoCallBack",true)
			addEventHandler("getPlayerInfoCallBack",root,getPlayerInfoCallBack)
		else
			guiSetText(labelName,"Nome: N/A")
			guiSetText(labelIP,"IP: N/A")
			guiSetText(labelSerial,"Serial: N/A")
			guiSetText(labelUsername,"Nome da Conta: N/A")
			guiSetText(labelCountry,"Versão: N/A")

			guiSetText(labelBlood,"Sangue: N/A")
			guiSetText(labelMurders,"Assassinatos: N/A")
			guiSetText(labelBanditsKilled,"Bandidos Mortos: N/A")
			guiSetText(labelZombiesKilled,"Zumbis Mortos: N/A")
			guiSetText(labelHeadshots,"Tiros na Cabeça: N/A")
			guiSetText(labelTemperature,"Temperatura: N/A")
			guiSetText(labelHumanity,"Humanidade: N/A")
			guiSetText(labelBackPackSlots,"Espaços da Mochila: N/A")
			guiSetText(labelSkin,"Skin: N/A")
			guiSetText(labelArea,"Área: Desconhecida")

			guiSetText(labelVehicleName,"Veículo: N/A")
			guiSetText(labelVehicleHealth,"Saúde do Veículo: 0%")

			guiSetText(buttonFreeze,"congelar")
			guiSetText(buttonMute,"silenciar")

			if not isEventHandlerAdded("onClientGUIClick",buttonMute,openMuteGui) then
				addEventHandler("onClientGUIClick",buttonMute,openMuteGui,false)
			end
		end
	end
	addEventHandler("onClientGUIClick", gridlistPlayers1, getGridListInfo, false)

	-- some other function buttons
	addEventHandler("onClientGUIClick",buttonDutyMode,dutyMode,false)
	addEventHandler("onClientGUIClick",buttonFreeze,freeze,false)
	addEventHandler("onClientGUIClick",buttonWarpTo,warpToPlayer,false)
	addEventHandler("onClientGUIClick",buttonKill,killPlayer,false)
	addEventHandler("onClientGUIClick",buttonFix,fixVehicle,false)
	addEventHandler("onClientGUIClick",buttonDestroy,destroyVehicle,false)
	addEventHandler("onClientGUIClick",buttonBlow,blowVehicle,false)
end
addEventHandler("onClientResourceStart", resourceRoot, gui)