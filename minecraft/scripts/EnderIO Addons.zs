//////////////////////////////////////////////////////////////////////////////////////////////
// Name: EnderIO Addons.zs
// Author: Lazerous
//////////////////////////////////////////////////////////////////////////////////////////////

print("Initializing 'EnderIO Addons.zs'...");

val nuggetVibrant = <EnderIO:itemMaterial:4>;
val ingotIron = <ore:ingotIron>;
val ingotNickel = <ore:ingotNickel>;
val machineChassis = <EnderIO:itemMachinePart>;
val cropSticks = <AgriCraft:cropsItem>;

val chassisPlates = <enderioaddons:itemMachineParts:13>;
val farmingBaseModule = <enderioaddons:itemMachineParts:17>;

recipes.remove(chassisPlates);
recipes.addShaped(chassisPlates * 8, [[ingotNickel, ingotIron, ingotNickel], [ingotIron, machineChassis, ingotIron], [ingotNickel, ingotIron, ingotNickel]]);

recipes.remove(farmingBaseModule);
recipes.addShaped(farmingBaseModule, [[null, nuggetVibrant, chassisPlates], [nuggetVibrant, cropSticks, nuggetVibrant], [chassisPlates, nuggetVibrant, null]]);

print("Initialized 'EnderIO Addons.zs'");
