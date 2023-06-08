--[[
Copyright (C) Maverick1305, 2023

Author: Maverick1305
Date: 11.02.2023
Version: 0.3.0.1

Contact:
https://discord.gg/Va7JNnEkcW

History:
V 0.1.0.0 @ 28.07.2022 - Initial Versoin

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
            if string.find(object.configFileName, "appleBox/appleBox.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.74
        autoLoadObject.sizeY = 0.32
        autoLoadObject.sizeZ = 0.5
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_closedCardboard") then
        local function CheckType(object)
            if string.find(object.configFileName, "butterBox.xml") then return true end

            return false;
        end
						
        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.37
        autoLoadObject.sizeY = 0.37
        autoLoadObject.sizeZ = 0.55
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_cardboard") then
        local function CheckType(object)
            if string.find(object.configFileName, "cauliflowerBox.xml") then return true end
            if string.find(object.configFileName, "cucumberBox.xml") then return true end
            if string.find(object.configFileName, "lettuceBox.xml") then return true end
            if string.find(object.configFileName, "tomatoesBox.xml") then return true end

            return false;
        end
		
        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.96
        autoLoadObject.sizeY = 0.36
        autoLoadObject.sizeZ = 0.64
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_cheese") then
        local function CheckType(object)
            if string.find(object.configFileName, "cheese/cheese.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.62
        autoLoadObject.sizeY = 0.23
        autoLoadObject.sizeZ = 0.62
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_goatcheese") then
        local function CheckType(object)
            if string.find(object.configFileName, "cheese/goatcheese.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.51
        autoLoadObject.sizeY = 0.19
        autoLoadObject.sizeZ = 0.51
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_eggWoodBox") then
        local function CheckType(object)
            if string.find(object.configFileName, "eggWoodBox.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.74
        autoLoadObject.sizeY = 0.16
        autoLoadObject.sizeZ = 0.5
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_eggBox") then
        local function CheckType(object)
            if string.find(object.configFileName, "eggBox.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.75
        autoLoadObject.sizeY = 0.45
        autoLoadObject.sizeZ = 0.5
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_fertilizerBag") then
        local function CheckType(object)
            if string.find(object.configFileName, "fertilizerBag.xml") then return true end

            return false;
        end
		
        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.75
        autoLoadObject.sizeY = 0.45
        autoLoadObject.sizeZ = 0.5
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_flourSack") then
        local function CheckType(object)
            if string.find(object.configFileName, "flourSack.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.61
        autoLoadObject.sizeY = 0.38
        autoLoadObject.sizeZ = 1.06
        autoLoadObject.type = "bigBag"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_europallet") then
        local function CheckType(object)
            if string.find(object.configFileName, "grapeJuicePallet.xml") then return true end
            if string.find(object.configFileName, "milkPallet.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 1.22
        autoLoadObject.sizeY = 1
        autoLoadObject.sizeZ = 0.81
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_onionSack") then
        local function CheckType(object)
            if string.find(object.configFileName, "onionSack.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.88
        autoLoadObject.sizeY = 0.25
        autoLoadObject.sizeZ = 0.58
        autoLoadObject.type = "bigBag"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_strawberriesBox") then
        local function CheckType(object)
            if string.find(object.configFileName, "strawberriesBox.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.57
        autoLoadObject.sizeY = 0.25
        autoLoadObject.sizeZ = 0.76
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_wineCrate") then
        local function CheckType(object)
            if string.find(object.configFileName, "wineCrate.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.74
        autoLoadObject.sizeY = 0.5
        autoLoadObject.sizeZ = 0.5
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_woodBasketGrapes") then
        local function CheckType(object)
            if string.find(object.configFileName, "woodBasketGrapes.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.55
        autoLoadObject.sizeY = 0.57
        autoLoadObject.sizeZ = 0.5
        autoLoadObject.type = "bigBag"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_woolBundle") then
        local function CheckType(object)
            if string.find(object.configFileName, "woolBundle.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.58
        autoLoadObject.sizeY = 0.59
        autoLoadObject.sizeZ = 0.8
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
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
        autoLoadObject.sizeX = 1.35
        autoLoadObject.sizeY = 2.40
        autoLoadObject.sizeZ = 1.15
        autoLoadObject.type = "bigBag"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_fillablePallet") then
        local function CheckType(object)
            if string.find(object.i3dFilename, "fillablePallet.i3d") then return true end
            
-- print("hb_fillablePallet")
-- DebugUtil.printTableRecursively(object,"_",0,2)
            
            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 1.42
        autoLoadObject.sizeY = 0.95
        autoLoadObject.sizeZ = 1.01
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_bigBox") then
        local function CheckType(object)
            if string.find(object.i3dFilename, "bigBox.i3d") then return true end
            
            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.98
        autoLoadObject.sizeY = 0.78
        autoLoadObject.sizeZ = 0.98
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_fillableAppleBox") then
        local function CheckType(object)
            if string.find(object.i3dFilename, "fillableAppleBox.i3d") then return true end
            
            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 1.21
        autoLoadObject.sizeY = 0.8
        autoLoadObject.sizeZ = 0.81
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_meatBox") then
        local function CheckType(object)
            if string.find(object.configFileName, "beefMeatBox.xml") then return true end
            if string.find(object.configFileName, "porkMeatBox.xml") then return true end
            if string.find(object.configFileName, "poultryMeatBox.xml") then return true end
            if string.find(object.configFileName, "sheepGoatMeatBox.xml") then return true end

            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.5
        autoLoadObject.sizeY = 0.24
        autoLoadObject.sizeZ = 0.72
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)		
    elseif (name == "hb_maltSack") then
        local function CheckType(object)
            if string.find(object.configFileName, "maltSack.xml") then return true end

            return false;
        end
				
        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.57
        autoLoadObject.sizeY = 0.14
        autoLoadObject.sizeZ = 1.03
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_fixFermActiveContainer") then
        local function CheckType(object)
            if string.find(object.configFileName, "fixFermActiveContainer.xml") then return true end
            
            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 1.5
        autoLoadObject.sizeY = 1.5
        autoLoadObject.sizeZ = 1.3
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_breadbox") then
        local function CheckType(object)
            if string.find(object.configFileName, "breadBox.xml") then return true end
            
            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.61
        autoLoadObject.sizeY = 0.29
        autoLoadObject.sizeZ = 0.42
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_liquidYeastCanister") then
        local function CheckType(object)
            if string.find(object.configFileName, "liquidYeastCanister.xml") then return true end
            
            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.17
        autoLoadObject.sizeY = 0.36
        autoLoadObject.sizeZ = 0.23
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)
    elseif (name == "hb_hopsBale") then
        local function CheckType(object)
            if string.find(object.configFileName, "hopsBale.xml") then return true end
            
            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.82
        autoLoadObject.sizeY = 0.1
        autoLoadObject.sizeZ = 1.12
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)       
    elseif (name == "hb_beerCrate") then
        local function CheckType(object)
            if string.find(object.configFileName, "beerCrate.xml") then return true end
            
            return false;
        end

        autoLoadObject.CheckTypeMethod = CheckType
        autoLoadObject.sizeX = 0.41
        autoLoadObject.sizeY = 0.31
        autoLoadObject.sizeZ = 0.55
        autoLoadObject.type = "pallet"
        autoLoadObject.nameTranslated = g_i18n:getText("aPalletAutoLoader_" .. name)        
 		end
end
FS22_aPalletAutoLoader.APalletAutoLoader.AddSupportedObjects = Utils.overwrittenFunction(FS22_aPalletAutoLoader.APalletAutoLoader.AddSupportedObjects, AutoloaderExtensionHofBergmann.AddSupportedObjects)



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
    table.insert(types, "hb_eggBox");
    table.insert(types, "hb_fertilizerBag");
    table.insert(types, "hb_flourSack");
    table.insert(types, "hb_europallet");
    table.insert(types, "hb_onionSack");
    table.insert(types, "hb_strawberriesBox");
    table.insert(types, "hb_wineCrate");
    table.insert(types, "hb_woodBasketGrapes");
    table.insert(types, "hb_woolBundle");
    table.insert(types, "hb_bigBag");
    table.insert(types, "hb_fillablePallet");
    table.insert(types, "hb_bigBox");
    table.insert(types, "hb_fillableAppleBox");
	table.insert(types, "hb_maltSack");
	table.insert(types, "hb_meatBox");
    table.insert(types, "hb_fixFermActiveContainer");	
    table.insert(types, "hb_breadbox");	
    table.insert(types, "hb_liquidYeastCanister");
    table.insert(types, "hb_hopsBale");	
    table.insert(types, "hb_beerCrate");		
    
	return types;
end

FS22_aPalletAutoLoader.APalletAutoLoader.CreateAvailableTypeList = Utils.overwrittenFunction(FS22_aPalletAutoLoader.APalletAutoLoader.CreateAvailableTypeList, AutoloaderExtensionHofBergmann.CreateAvailableTypeList)