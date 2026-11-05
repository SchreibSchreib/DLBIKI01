
% 1. Straßenbeziehung der Kreuzung


% 1.1 Gegenüberliegende Zufahrten
opposite(north, south).
opposite(south, north).
opposite(east, west).
opposite(west, east).

% 1.2 Aus Fahrersicht rechts liegende Zufahrten
% right_approach(FromDirection, RightFromDirection).
right_approach(north, west).
right_approach(west, south).
right_approach(south, east).
right_approach(east, north).

% 1.3 Konflikte zwischen Fahrabsichten bei rechts vor links
% right_side_conflict(OwnTurnDirection, TurnDirectionFromVehicleRight)
right_side_conflict(straight, straight).
right_side_conflict(straight, right).
right_side_conflict(straight, left).
right_side_conflict(left, straight).
right_side_conflict(left, left).

% 3. Fakten zu Fahrzeugen
% vehicle(Id, FromDirection, TurnDirection).
vehicle(car1, south, straight).
vehicle(car2, north, left).
vehicle(car3, west, right).
vehicle(car4, east, right).
