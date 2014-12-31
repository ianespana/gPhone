----// gPhone //----
-- Author: Exho
-- Version: 12/31/14
-- Phone source: https://creativemarket.com/buatoom/6422-iPhone5-Flat-Template
-- Icon sources: http://www.flaticon.com/

--[[ To Do:
	- New icons that are not all white
	- Boot-up screen
]]

gPhone = gPhone or {}

if SERVER then
	--// Serverside config
	gPhone.Config = {
		

	}
else
	--// Clientside config
	gPhone.Config = {
		
		DarkenStatusBar = false,
		
		HomeWallpaper = "vgui/gphone/wallpapers/greyfabric.png",
		LockWallpaper = "vgui/gphone/wallpapers/greyfabric.png",
		FallbackWallpaper = "vgui/gphone/wallpapers/wood.png",
		
		OpenKey = KEY_G, 
		KeyHoldTime = 0.75,
		
		OpenLockDelay = 1,
		
		ColorBlue = Color(20,80,200),
		PhoneColor = Color(255,255,255,255),
	}
end

if SERVER then
	print("Loading gPhone - Server")
	
	util.AddNetworkString("gPhone_DataTransfer")
	util.AddNetworkString("gPhone_MultiplayerData")
	util.AddNetworkString("gPhone_MultiplayerStream")
	util.AddNetworkString("gPhone_ChatMsg")
	
	AddCSLuaFile()
	AddCSLuaFile("gphone/cl_phone.lua")
	AddCSLuaFile("gphone/cl_appbase.lua")
	AddCSLuaFile("gphone/cl_util.lua")
	AddCSLuaFile("gphone/cl_animations.lua")
	AddCSLuaFile("gphone/sh_util.lua")
	AddCSLuaFile("gphone/sh_multiplayer.lua")
	
	include("gphone/sv_util.lua")
	include("gphone/sv_phone.lua")
	include("gphone/sh_util.lua")
	include("gphone/sh_multiplayer.lua")
	
	print("Loaded!")
end

if CLIENT then
	print("Loading gPhone - Client")
	
	include("gphone/cl_phone.lua")
	include("gphone/cl_appbase.lua")
	include("gphone/cl_util.lua")
	include("gphone/cl_animations.lua")
	include("gphone/sh_util.lua")
	include("gphone/sh_multiplayer.lua")
	
	gPhone.LoadClientConfig()
	
	print("Loaded!")
end

