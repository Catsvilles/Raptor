//Define Function below:
{ | modules, duration(1), cleanup |
	Pbind(
		\instrument, modules.synthDef.name,
		\dur, 0.2,
		\degree, Pxrand([0, 2, 3, 4, 5, 7, 9, 11, 14], inf),
		\ampDB, Prand([-12, -9, -18, -18], inf),
		\timescale, Pkey(\dur) * Pseq([4, Pn(0.2, 3)], inf),
		\pan, Pseq([0, Pwhite(-1.0, 1.0, 3)], inf),
	);
};
