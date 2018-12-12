salmon_fnc_fp = {
// Get face
_faceStart = face player;

if (["CamoHead", _faceStart] call BIS_fnc_countnString) then {

	// Turn string into array
	_arr = _faceStart splitString "_";

	// Remove F from array
	_arr = _arr - ["F"];

	//Count array and get num + face
	_count = count _arr;
	_faceString = _arr select _count -2;
	_num = _arr select _count - 1;

	//Pick etnicity
	if (["white", _faceStart] call BIS_fnc_countnString) then {
		_colour = "WhiteHead_";
	};
	if (["african", _faceStart] call BIS_fnc_countnString) then {
		_colour = "AfricanHead_";
	};
	if (["asian", _faceStart] call BIS_fnc_countnString) then {
		_colour = "AsianHead_A3_";
	};
	if (["greek", _faceStart] call BIS_fnc_countnString) then {
		_colour = "GreekHead_A3_";
	};
	if (["persian", _faceStart] call BIS_fnc_countnString) then {
		_colour = "PersianHead_";
	};
	//Create new skin
	_skin = [_colour,_num] joinString "";
	[player, _skin] remoteExec ["setFace", 0, player];
	//Broadcast old + new skin 
	systemChat format ["%1", _faceStart]; 
	systemChat format ["%1", _skin]; 
} else {
		
	// Turn string into array
	_arr = _faceStart splitString "_";
	
	//Count array and get num + face
	_count = count _arr;
	_faceString = _arr select _count -2;
	_num = _arr select _count - 1;
	
	//Pick etnicity
	if (["white", _faceStart] call BIS_fnc_countnString) then {
		_colour = "White_";
	};
	if (["african", _faceStart] call BIS_fnc_countnString) then {
		_colour = "African_";
	};
	if (["asian", _faceStart] call BIS_fnc_countnString) then {
		_colour = "Asian_";
	};
	if (["greek", _faceStart] call BIS_fnc_countnString) then {
		_colour = "Greek_";
	};
	if (["persian", _faceStart] call BIS_fnc_countnString) then {
		_colour = "Persian_";
	};
	
	//Create new skin
	_skin = ["CamoHead_","White_",_num,"_","F"] joinString "";
	[player, _skin] remoteExec ["setFace", 0, player]; 
	
	//Broadcast old and new skin
	systemChat format ["%1", _faceStart]; 
	systemChat format ["%1", _skin]; 
};
};

_paint = ["Facepaint", "Add/Remove facepaint", "", {[] call salmon_fnc_fp}] call ace_countnteract_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions","ACE_Equipment"], _paint] call ace_countnteract_menu_fnc_addActionToClass;