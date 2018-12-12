class CfgPatches{
	class Salmon_fp_main{
		name = "Salmon Facepaint";
		requiredVersion=1.88;
		requiredAddons[]={
			"ace_main",
			"cba_main",
			"extended_eventhandlers"
		};
		author="Green";
		units[]={};
		weapons[]={};
		authorUrl="http://TacSalmon.me";
	};
};
class Extended_PreInit_EventHandlers{
	class Salmon_FP{
		init="call compile preprocessFileLineNumbers 'Salmon_FP\XEH_PreInit.sqf'";
	};
};