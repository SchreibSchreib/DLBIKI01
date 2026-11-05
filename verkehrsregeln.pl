:- ensure_loaded('fakten.pl').

% can_drive(Vehicle)
% Prüft, ob das angegebene Fahrzeug fahren darf oder einem anderen Fahrzeug Vorfahrt gewähren muss
can_drive(Vehicle) :-
    vehicle(Vehicle, _, _),
    \+ must_yield(Vehicle, _).

% must_yield(Vehicle, OtherVehicle)
% Linksabbieger muss entgegenkommenden Geradeausfahrer/Rechtsabbieger durchfahren lassen
must_yield(Vehicle, OtherVehicle) :-
    vehicle(Vehicle, FromDirection, left),
    opposite(FromDirection, OppositeDirection),
    (   vehicle(OtherVehicle, OppositeDirection, straight)
    ;   vehicle(OtherVehicle, OppositeDirection, right)).

% must_yield(Vehicle, OtherVehicle)
% Geradeausfahrer/Linksabbieger muss von rechts kommenden Fahrer durchfahren lassen
must_yield(Vehicle, OtherVehicle) :-    
    vehicle(Vehicle, FromDirection, TurnDirection),
    right_approach(FromDirection, RightFromDirection),
    vehicle(OtherVehicle, RightFromDirection, OtherTurnDirection),
    right_side_conflict(TurnDirection, OtherTurnDirection).