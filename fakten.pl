
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

% 3. Ursprüngliche Fahrzeugbelegung
vehicle(Id, FromDirection, TurnDirection).
vehicle(car1, south, straight).
vehicle(car2, north, left).
vehicle(car3, west, right).
vehicle(car4, east, right).

% 4. Fahrzeugfakten zu den Testfällen
% Immer nur eine Fahrzeugbelegung aktiv lassen.

% T1: Linksabbieger und entgegenkommender Geradeausfahrer
% vehicle(car1, north, left).
% vehicle(car2, south, straight).

% T2: Geradeausfahrer und Geradeausfahrer von rechts
% vehicle(car1, south, straight).
% vehicle(car2, east, straight).

% T3: Linksabbieger und entgegenkommender Rechtsabbieger
% vehicle(car1, west, left).
% vehicle(car2, east, right).

% T4: Gegenüber T1 vertauschte Fahrzeugrollen
% vehicle(car1, south, straight).
% vehicle(car2, north, left).

% T5: Zwei gegenüberliegende Linksabbieger
% vehicle(car1, north, left).
% vehicle(car2, south, left).