#include "..\..\script_macros.hpp"
/*
    File: fn_ticketPaid.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Verifies that the ticket was paid.
*/
params [
    ["_value",5,[0]],
    ["_unit",objNull,[objNull]],
    ["_cop",objNull,[objNull]]
];
if (isNull _unit || {!(_unit isEqualTo life_ticket_unit)}) exitWith {}; //NO

BANK = BANK + _value;
[1] call SOCK_fnc_updatePartial;
