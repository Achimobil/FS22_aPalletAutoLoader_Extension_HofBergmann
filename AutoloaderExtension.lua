--[[
Copyright (C) Achimobil / Maverick1305 2023/ Horschd 2024

Author: Maverick1305
Date: 11.02.2023
Version: 0.3.0.1

Contact:
https://discord.gg/Va7JNnEkcW

History:
V 0.1.0.0 @ 28.07.2022 - Initial Version
V 0.5.0.0 @ 21.07.2024 - Additions added for HB V1.5.0.0 @ Horschd
V 0.5.0.1 @ 21.07.2024 - further additions added for HB V1.5.0.0 @ Horschd

Important:
No copy and use in own mods allowed.

Das verändern und wiederöffentlichen, auch in Teilen, ist untersagt und wird abgemahnt.
]]

AutoloaderExtensionHofBergmann = {}


---
function AutoloaderExtensionHofBergmann:AddSupportedObjects(superFunc, autoLoadObject, name)
-- print("AutoloaderExtensionHofBergmann:AddSupportedObjects");
	-- call for default types
	superFunc(self, autoLoadObject, name)
	
	-- add check method and size for every additional type
	if (name == "hb_woodbox") then
		local function CheckType(object)
			if string.find(object.configFileName, "fillableAppleBoxSmall/fillableAppleBoxSmall.xml") then return true end
			if string.find(object.configFileName, "fillableCherryBoxSmall/fillableCherryBoxSmall.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.72, 0.33, 0.48, "pallet", "aPalletAutoLoader_" .. name, true, true)
		
		
	elseif (name == "hb_closedCardboard") then
		local function CheckType(object)
			if string.find(object.configFileName, "butterBox.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.33, 0.38, 0.51, "pallet", "aPalletAutoLoader_" .. name, true, true)
		
		
	elseif (name == "hb_cardboard") then
		local function CheckType(object)
			if string.find(object.configFileName, "cauliflowerBox.xml") then return true end
			if string.find(object.configFileName, "cucumberBox.xml") then return true end
			if string.find(object.configFileName, "lettuceBox.xml") then return true end
			if string.find(object.configFileName, "tomatoesBox.xml") then return true end
			if string.find(object.configFileName, "carrotBox.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.94, 0.36, 0.63, "pallet", "aPalletAutoLoader_" .. name, true, true)

		
	elseif (name == "hb_cheese") then
		local function CheckType(object)
			if string.find(object.configFileName, "cheese/cheese.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.62, 0.23, 0.62, "pallet", "aPalletAutoLoader_" .. name, true, true)


	elseif (name == "hb_goatcheese") then
		local function CheckType(object)
			if string.find(object.configFileName, "cheese/goatcheese.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.51, 0.17, 0.51, "pallet", "aPalletAutoLoader_" .. name, true, true)
--		autoLoadObject.LoadHeightOffset = 0.085


	elseif (name == "hb_eggWoodBox") then
		local function CheckType(object)
			if string.find(object.configFileName, "eggWoodBox.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.72, 0.17, 0.48, "pallet", "aPalletAutoLoader_" .. name, true, true)


--	***	eggBox not separately on HB Map available
--
--	elseif (name == "hb_eggBox") then
--		local function CheckType(object)
--			if string.find(object.configFileName, "eggBox.xml") then return true end
--								
--			return false;
--		end
--		autoLoadObject.CheckTypeMethod = CheckType
--		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.75, 0.45, 0.50, "pallet", "aPalletAutoLoader_" .. name, true, true)
		
		
	elseif (name == "hb_fertilizerBag") then
		local function CheckType(object)
			if string.find(object.configFileName, "fertilizerBag.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.56, 0.20, 1.02, "pallet", "shopItem_fertilizerBag", true, true)

		
	elseif (name == "hb_flourSack") then
		local function CheckType(object)
			if string.find(object.configFileName, "flourSack.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.61, 0.38, 1.06, "bigBag", "storeItem_flourSack", true, false)


--	*** meatPallets.xml currently not separately on HB Map available
--
--	*** hint, these pallets can be loaded as standard pallets:
--		eggBoxPallet.xml
--		appleJuicePallet.xml
--		grapeJuicePallet.xml
--		milkPallet.xml
--		carrotPallet.xml
--		cauliflowerPallet.xml
--		cucumberPallet.xml
--		lettucePallet.xml
--		mushroomsPallet.xml
--		tomatoPallet.xml
		

	elseif (name == "hb_onionSack") then
		local function CheckType(object)
			if string.find(object.configFileName, "onionSack.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.88, 0.25, 0.58, "bigBag", "storeItem_onionSack", true, true)


	elseif (name == "hb_strawberriesBox") then
		local function CheckType(object)
			if string.find(object.configFileName, "strawberriesBox.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.54, 0.26, 0.73, "pallet", "storeItem_strawberriesBox", true, true)


	elseif (name == "hb_wineCrate") then
		local function CheckType(object)
			if string.find(object.configFileName, "wineCrate.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.72, 0.52, 0.48, "pallet", "aPalletAutoLoader_" .. name, true, true)


	elseif (name == "hb_roundwickerbaskets") then
		local function CheckType(object)
			if string.find(object.configFileName, "woodBasketGrapes.xml") then return true end
			if string.find(object.configFileName, "fillableAppleBasket.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.55, 0.57, 0.5, "pallet", "aPalletAutoLoader_" .. name, true, false)


	elseif (name == "hb_woolBundle") then
		local function CheckType(object)
			if string.find(object.configFileName, "woolBundle.xml") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.53, 0.59, 0.75, "pallet", "aPalletAutoLoader_" .. name, true, true)


	elseif (name == "hb_bigBag") then
		local function CheckType(object)
			if object.configFileName ~= nil and string.find(object.configFileName, "/bigBag/") then return true end

			if object.i3dMappings == nil then
				return false;
			end

			for mappingName, _ in pairs(object.i3dMappings) do
				if (mappingName == "bigBag_vis") then
				return true;
				end
			end
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.35, 1.50, 1.08, "bigBag", "aPalletAutoLoader_" .. name, true, false)


	elseif (name == "hb_fillablePallet") then
		local function CheckType(object)
			if string.find(object.i3dFilename, "fillablePallet.i3d") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.42, 0.95, 1.01, "pallet", "shopItem_fillableWoodBox", false, false)


	elseif (name == "hb_fillableAppleBox") then
		local function CheckType(object)
			if string.find(object.i3dFilename, "fillableAppleBox.i3d") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.21, 0.80, 0.81, "pallet", "shopItem_fillableAppleBox", false, false)


	elseif (name == "hb_bigBox") then
		local function CheckType(object)
			if string.find(object.i3dFilename, "bigBox.i3d") then return true end
								
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.98, 0.78, 0.98, "pallet", "shopItem_fillableBigBox", true, false)


	elseif (name == "hb_fillableHoneyBox") then
		local function CheckType(object)
			if string.find(object.configFileName, "fillableHoneyBox.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.74, 0.46, 0.54, "pallet", "shopItem_fillableHoneyBox", true, true)


	elseif (name == "hb_meatBox") then
		local function CheckType(object)
			if string.find(object.configFileName, "beefMeatBox.xml") then return true end
			if string.find(object.configFileName, "porkMeatBox.xml") then return true end
			if string.find(object.configFileName, "poultryMeatBox.xml") then return true end
			if string.find(object.configFileName, "sheepGoatMeatBox.xml") then return true end
			if string.find(object.configFileName, "deerMeatBox.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.50, 0.24, 0.72, "pallet", "storeItem_meatBox", false, true)


	elseif (name == "hb_PaperbagWare") then
		local function CheckType(object)
			if string.find(object.configFileName, "maltSack.xml") then return true end
			if string.find(object.configFileName, "sugarSack.xml") then return true end
			if string.find(object.configFileName, "maizeSack.xml") then return true end

			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.57, 0.17, 1.03, "pallet", "aPalletAutoLoader_" .. name, true, true)


	elseif (name == "hb_IBC Tank") then
		local function CheckType(object)
			if string.find(object.configFileName, "fixFermActiveContainer.xml") then return true end
			if string.find(object.configFileName, "foodOilTank.xml") then return true end
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.50, 1.50, 1.35, "pallet", "aPalletAutoLoader_" .. name, false, false)


	elseif (name == "hb_breadbox") then
		local function CheckType(object)
			if string.find(object.configFileName, "breadBox.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.61, 0.29, 0.42, "pallet", "storeItem_breadBox", true, true)


	elseif (name == "hb_liquidYeastCanister") then
		local function CheckType(object)
			if string.find(object.configFileName, "liquidYeastCanister.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.17, 0.36, 0.23, "pallet", "storeItem_liquidYeastCanister", true, false)


	elseif (name == "hb_hopsBale") then
		local function CheckType(object)
			if string.find(object.configFileName, "hopsBale.xml") then return true end
			-- if string.find(object.configFileName, "hopsBale_empty.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.78, 0.78, 1.06, "pallet", "storeItem_hopsBale", true, true)


	elseif (name == "hb_beerCrate") then
		local function CheckType(object)
			if string.find(object.configFileName, "beerCrate.xml") then return true end
			if string.find(object.configFileName, "speziCrate.xml") then return true end
						
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.37, 0.31, 0.51, "pallet", "storeItem_beerCrate", true, true)


	elseif (name == "hb_catFoodPallet") then
		local function CheckType(object)
			if string.find(object.configFileName, "catFoodPallet.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.56, 0.15, 0.36, "pallet", "storeItem_catFoodPallet", true, true)


	elseif (name == "hb_petCarrier") then
		local function CheckType(object)
			if string.find(object.configFileName, "petCarrier.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.98, 0.60, 0.69, "pallet", "shopItem_petCarrier", true, false)


	elseif (name == "hb_poultryBox") then
		local function CheckType(object)
			if string.find(object.configFileName, "poultryBox.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.31, 0.32, 0.60, "pallet", "shopItem_poultryBox", true, true)


	elseif (name == "hb_animalSack") then
		local function CheckType(object)
			if string.find(object.configFileName, "animalSack.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.58, 0.54, 0.32, "pallet", "shopItem_animalSack", true, false)


	elseif (name == "hb_pulletBox") then
		local function CheckType(object)
			if string.find(object.configFileName, "pulletBox.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.24, 0.42, 0.63, "pallet", "shopItem_pulletBox", true, true)



	elseif (name == "hb_fishBoxFillable") then
		local function CheckType(object)
			if string.find(object.configFileName, "fishBoxFillable.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.47, 0.17, 0.7, "pallet", "shopItem_fishBoxFillable", true, true)


	elseif (name == "hb_fishBox") then
		local function CheckType(object)
			if string.find(object.configFileName, "fishBox.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.75, 0.48, 0.69, "pallet", "shopItem_fishBox", true, true)


	elseif (name == "hb_milkCan") then
		local function CheckType(object)
			if string.find(object.configFileName, "milkCan.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.41, 0.94, 0.41, "pallet", "fillType_milk", true, false)


	elseif (name == "hb_glasswoodbox") then
		local function CheckType(object)
			if string.find(object.configFileName, "honeyBox.xml") then return true end
			if string.find(object.configFileName, "jamBox.xml") then return true end
			if string.find(object.configFileName, "moonshineBox.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.52, 0.36, 0.38, "pallet", "aPalletAutoLoader_" .. name, true, true)


	elseif (name == "hb_animalSkinPallet") then
		local function CheckType(object)
			if string.find(object.configFileName, "animalSkinPallet.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.60, 0.80, 1.08, "pallet", "storeItem_animalSkinPallet", true, false)


	elseif (name == "hb_fillableAnimalSkinBox") then
		local function CheckType(object)
			if string.find(object.configFileName, "fillableAnimalSkinBox.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.2, 0.88, 1.2, "pallet", "shopItem_fillableAnimalSkinBox", false, true)


	elseif (name == "hb_wineBarrel") then
		local function CheckType(object)
			if string.find(object.configFileName, "wineBarrel.xml") then return true end

			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.61, 1.00, 0.61, "pallet", "storeItem_wineBarrel", true, false)
		

	elseif (name == "hb_pulletMeatBox") then
		local function CheckType(object)
			if string.find(object.configFileName, "pulletMeatBox.xml") then return true end

			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.65, 0.28, 0.95, "pallet", "aPalletAutoLoader_" .. name, true, true)
		

	elseif (name == "hb_woodChipsSack") then
		local function CheckType(object)
			if string.find(object.configFileName, "woodChipsSack.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.60, 1.0, 0.25, "pallet", "shopItem_woodChipsSack", false, false)


	elseif (name == "hb_greaseCan") then
		local function CheckType(object)
			if string.find(object.configFileName, "greaseCan.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.20, 0.20, 0.20, "pallet", "aPalletAutoLoader_" .. name, true, false)


	elseif (name == "hb_beveragepallet") then
		local function CheckType(object)
			if string.find(object.configFileName, "appleJuicePallet.xml") then return true end
			if string.find(object.configFileName, "grapeJuicePallet.xml") then return true end
			if string.find(object.configFileName, "milkPallet.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.20, 1.01, 0.76, "pallet", "aPalletAutoLoader_" .. name, true, true)


	elseif (name == "hb_eggBoxPallet") then
		local function CheckType(object)
			if string.find(object.configFileName, "eggBoxPallet.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		-- AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.20, 1.20, 0.80, "pallet", "aPalletAutoLoader_" .. name, true, false)
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.18, 1.20, 0.78, "pallet", "aPalletAutoLoader_" .. name, true, false)


	elseif (name == "hb_vegetablePalett") then
		local function CheckType(object)
			if string.find(object.configFileName, "carrotPallet.xml") then return true end
			if string.find(object.configFileName, "cauliflowerPallet.xml") then return true end
			if string.find(object.configFileName, "cucumberPallet.xml") then return true end
			if string.find(object.configFileName, "lettucePallet.xml") then return true end
			if string.find(object.configFileName, "tomatoPallet.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.22, 1.01, 0.82, "pallet", "aPalletAutoLoader_" .. name, true, true)


	elseif (name == "hb_strawberriesPallet") then
		local function CheckType(object)
			if string.find(object.configFileName, "strawberriesBoxPallet.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.20, 0.80, 0.80, "pallet", "aPalletAutoLoader_" .. name, true, true)


	elseif (name == "hb_mushroomsPallet") then
		local function CheckType(object)
			if string.find(object.configFileName, "mushroomsPallet.xml") then return true end
			
			return false;
		end
		autoLoadObject.CheckTypeMethod = CheckType
		AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 1.22, 1.01, 0.82, "pallet", "storeItem_mushroomsBoxPallet", true, false)


	elseif (name == "euroPallet") then
		-- Extend check methods of default
		autoLoadObject.CheckTypeMethod = Utils.overwrittenFunction(autoLoadObject.CheckTypeMethod, function (object, superFunc)
			-- print(string.format("CheckTypeMethod: %s,%s", object, superFunc));
			if object.configFileName ~= nil and string.find(object.configFileName, "whitelimePallet") then return false end
			-- if object.configFileName ~= nil and string.find(object.configFileName, "animalSkinPallet") then return false end
			if object.configFileName ~= nil and string.find(object.configFileName, "tanneryMixPallet") then return false end
			if object.configFileName ~= nil and string.find(object.configFileName, "leatherPallet") then return false end
			return superFunc(object);
		end)


	elseif (name == "euroPalletOversize") then
		-- Extend check methods of default
		autoLoadObject.CheckTypeMethod = Utils.overwrittenFunction(autoLoadObject.CheckTypeMethod, function (object, superFunc)
			-- print(string.format("CheckTypeMethod: %s,%s", object, superFunc));
			if object.configFileName ~= nil and string.find(object.configFileName, "whitelimePallet") then return true end
			-- if object.configFileName ~= nil and string.find(object.configFileName, "animalSkinPallet") then return false end
			if object.configFileName ~= nil and string.find(object.configFileName, "tanneryMixPallet") then return true end
			if object.configFileName ~= nil and string.find(object.configFileName, "leatherPallet") then return true end
			return superFunc(object);


	-- elseif (name == "hb_cryoBarrel") then
		-- local function CheckType(object)
			-- if string.find(object.configFileName, "cryoBarrel") then return true end
			
			-- return false;
		-- end
		-- autoLoadObject.CheckTypeMethod = CheckType

		-- AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, 0.32, 0.48, 0.32, "pallet", "storeItem_cryoBarrel", true, true)


		end)
	end
	
end
FS22_aPalletAutoLoader.APalletAutoLoader.AddSupportedObjects = Utils.overwrittenFunction(FS22_aPalletAutoLoader.APalletAutoLoader.AddSupportedObjects, AutoloaderExtensionHofBergmann.AddSupportedObjects)

function AutoloaderExtensionHofBergmann:fillAutoLoadObject(autoLoadObject, sizeX, sizeY, sizeZ, type, shopName, withVehicleTrigger, stackable)
		autoLoadObject.sizeX = sizeX
		autoLoadObject.sizeY = sizeY
		autoLoadObject.sizeZ = sizeZ
		autoLoadObject.type = type
		autoLoadObject.nameTranslated = "HB - " .. g_i18n:getText(shopName, "FS22_HofBergmann")
		if withVehicleTrigger then
			autoLoadObject.pickupTriggerCollisionMask = CollisionFlag.TRIGGER_VEHICLE;
		end
		autoLoadObject.stackable = stackable;
end


function AutoloaderExtensionHofBergmann:CreateAvailableTypeList(superFunc)
-- print("AutoloaderExtensionHofBergmann:AddSupportedObjects");
	-- get default list
	local types = superFunc(self)
	
	-- local types = {};
	-- add additional types
	table.insert(types, "hb_woodbox");
	table.insert(types, "hb_closedCardboard");
	table.insert(types, "hb_cardboard");
	table.insert(types, "hb_cheese");
	table.insert(types, "hb_goatcheese");
	table.insert(types, "hb_eggWoodBox");
	-- table.insert(types, "hb_eggBox");
	table.insert(types, "hb_fertilizerBag");
	table.insert(types, "hb_flourSack");
	table.insert(types, "hb_onionSack");
	table.insert(types, "hb_strawberriesBox");
	table.insert(types, "hb_wineCrate");
	table.insert(types, "hb_roundwickerbaskets");
	table.insert(types, "hb_woolBundle");
	table.insert(types, "hb_bigBag");
	table.insert(types, "hb_fillablePallet");
	table.insert(types, "hb_fillableAppleBox");
	table.insert(types, "hb_bigBox");
	table.insert(types, "hb_PaperbagWare");
	table.insert(types, "hb_meatBox");
	table.insert(types, "hb_IBC Tank");
	table.insert(types, "hb_breadbox");
	table.insert(types, "hb_liquidYeastCanister");
	table.insert(types, "hb_hopsBale");
	table.insert(types, "hb_beerCrate");
	table.insert(types, "hb_catFoodPallet");
	table.insert(types, "hb_petCarrier");
	table.insert(types, "hb_pulletBox");
	table.insert(types, "hb_poultryBox");
	table.insert(types, "hb_animalSack");
	table.insert(types, "hb_fishBoxFillable");
	table.insert(types, "hb_fishBox");
	table.insert(types, "hb_milkCan");
	table.insert(types, "hb_glasswoodbox");
	table.insert(types, "hb_fillableHoneyBox");
	table.insert(types, "hb_animalSkinPallet");
	table.insert(types, "hb_fillableAnimalSkinBox");
	table.insert(types, "hb_wineBarrel");
	table.insert(types, "hb_pulletMeatBox");
	table.insert(types, "hb_woodChipsSack");
	table.insert(types, "hb_greaseCan");
	table.insert(types, "hb_beveragepallet");
	table.insert(types, "hb_eggBoxPallet");
	table.insert(types, "hb_vegetablePalett");
	table.insert(types, "hb_strawberriesPallet");
	table.insert(types, "hb_mushroomsPallet");
	-- table.insert(types, "hb_cryoBarrel");	
	
	return types;
end

FS22_aPalletAutoLoader.APalletAutoLoader.CreateAvailableTypeList = Utils.overwrittenFunction(FS22_aPalletAutoLoader.APalletAutoLoader.CreateAvailableTypeList, AutoloaderExtensionHofBergmann.CreateAvailableTypeList)

function AutoloaderExtensionHofBergmann:getIsValidObject(superFunc, object)
-- print("AutoloaderExtensionHofBergmann:getIsValidObject");
	local result = superFunc(self, object);
	-- print(string.format("result: %s", result));
	if result == false then
		local objectFilename = object.configFileName or object.i3dFilename;
		-- print(string.format("objectFilename: %s", objectFilename));
		if objectFilename ~= nil then
			-- print(string.format("object.typeName: %s", object.typeName));
			if object.typeName == "FS22_HofBergmann.livestockBox" then
				result = true;
			end
		end
	end
	-- print(string.format("result: %s", result));
	return result;
end
FS22_aPalletAutoLoader.APalletAutoLoader.getIsValidObject = Utils.overwrittenFunction(FS22_aPalletAutoLoader.APalletAutoLoader.getIsValidObject, AutoloaderExtensionHofBergmann.getIsValidObject)