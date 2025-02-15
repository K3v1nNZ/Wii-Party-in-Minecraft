TEXT_EFFECT(255, 0, 255) {
	metalic();
}

TEXT_EFFECT(255, 4, 255) {
	animated_gradient(rgb(248, 20, 20), rgb(248, 120, 20), 1.0);
}

TEXT_EFFECT(255, 8, 255) {
	animated_gradient(rgb(13, 255, 253), rgb(13, 255, 65), 1.0);
}

TEXT_EFFECT(255, 12, 255) {
	fade(rgb(13, 255, 65), rgb(13, 255, 253), 2.0);
	waving(1.0, 1.0);
}

TEXT_EFFECT(255, 16, 255) {
	remove_shadow();
	replace_color(rgb(256, 256, 256));
}

TEXT_EFFECT(255, 20, 255) {
	remove_shadow();
	replace_color(rgb(128, 128, 128));
}


TEXT_EFFECT(255, 24, 255) {
	waving(0.75,1);
	replace_color(rgb(170, 170, 170));
}

TEXT_EFFECT(255, 28, 255) {
	waving(0.75,1);
	replace_color(rgb(256, 256, 256));
}

TEXT_EFFECT(255, 32, 255) {
	waving(0.75,1);
	replace_color(rgb(224, 191, 125));
}

TEXT_EFFECT(255, 36, 255) {
	waving(0.75,1);
	replace_color(rgb(175, 208, 219));
}

TEXT_EFFECT(255, 40, 255) {
	waving(0.75,1);
	replace_color(rgb(184, 112, 80));
}

TEXT_EFFECT(255, 44, 255) {
	waving(1,1.7);
	animated_gradient(rgb(255, 229, 114), rgb(185, 166, 81), 7.5);
}

TEXT_EFFECT(255, 48, 255) {
	rainbow(1.0);
}