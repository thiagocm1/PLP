happy(vicent).
listens2Music(butch).
playsAirGuitar(vicent) :- listen2Music(vicent), happy(vicent).
playsAirGuitar(butch) :- happy(butch).
playsAirGuitar(butch) :- listens2Music(butch).

