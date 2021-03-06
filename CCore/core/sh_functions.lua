function ShowAboveRadarMessage(msg, flash, saveToBrief, hudColorIndex)
	if saveToBrief == nil then saveToBrief = true end
	AddTextEntry('notif', msg)
	BeginTextCommandThefeedPost('notif')
	if hudColorIndex then ThefeedNextPostBackgroundColor(hudColorIndex) end
	EndTextCommandThefeedPostTicker(flash or false, saveToBrief)
end

RegisterNetEvent("corazon:ShowAboveRadarMessage")
AddEventHandler("corazon:ShowAboveRadarMessage", ShowAboveRadarMessage)

function ShowHelpNotification(msg)
	AddTextEntry('zbiHelpNotification', msg)
	BeginTextCommandDisplayHelp('zbiHelpNotification')
	EndTextCommandDisplayHelp(0, false, true, -1)
end

RegisterNetEvent("corazon:ShowHelpNotification")
AddEventHandler("corazon:ShowHelpNotification", ShowHelpNotification)

function LoadingPrompt(loadingText, spinnerType)

	if IsLoadingPromptBeingDisplayed() then
		RemoveLoadingPrompt()
	end

	if (loadingText == nil) then
		BeginTextCommandBusyString(nil)
	else
		BeginTextCommandBusyString("STRING");
		AddTextComponentSubstringPlayerName(loadingText);
	end

	EndTextCommandBusyString(spinnerType)
end

function DrawAdvancedText2(x,y ,w,h,sc, text, r,g,b,a,font,jus)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(sc, sc)
    N_0x4e096588b13ffeca(jus)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - 0.1+w, y - 0.02+h)
end

function createBlip(vectorPosX, vectorPosY, vectorPosZ, blipSprite, blipColor, blipText, blipText, blipScale, blipDisplay, blipAlpha)

	local blip = AddBlipForCoord(vectorPosX, vectorPosY, vectorPosZ)

	SetBlipSprite(blip, blipSprite)
	SetBlipAsShortRange(blip, true)
	SetBlipColour(blip, blipColor)
	SetBlipScale(blip, blipScale)
	SetBlipRoute(blip, blipText)
	SetBlipDisplay(blip, blipDisplay)
	SetBlipAlpha(blip, blipAlpha)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(blipText)
	EndTextCommandSetBlipName(blip)

	return blip

end
