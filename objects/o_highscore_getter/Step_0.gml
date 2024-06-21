if send_data == 1 {
    highscoree = global.points;
    name = global.name;
    scores = 0;
    key1 = base64_encode(irandom_range(0, 100000));
    key2 = base64_encode(irandom_range(0, 10000));
    key3 = base64_encode(global.enemy_spawned);
    key4 = base64_encode(irandom_range(0, 1000));
    key5 = sha1_string_utf8(base64_encode(419* (highscoree * 69) + 69));

        if global.scores_dodgev1 != 0 {
            o_draw_online_score.scores = global.scores_dodgev1;
            if array_length_1d(global.scores_dodgev1) < 51 {
                http_get("https://pauledevelopment.de/onlinescore/sk1/sk1.php?name=" + name + "&score=" + string(highscoree) + "&key1=" + string(key1) + "&key2=" + string(key2) + "&key3=" + string(key3) + "&key4=" + string(key4) + "&key5=" + string(key5));
            }
            else if highscoree > real(string_digits(global.scores_dodgev1[50])) {
                http_get("https://pauledevelopment.de/onlinescore/sk1/sk1.php?name=" + name + "&score=" + string(highscoree) + "&key1=" + string(key1) + "&key2=" + string(key2) + "&key3=" + string(key3) + "&key4=" + string(key4) + "&key5=" + string(key5));
            }
        }

        if global.scores_dodgev1_weekly != 0 {
            if array_length_1d(global.scores_dodgev1_weekly) < 51 {
                http_get("https://pauledevelopment.de/onlinescore/sk1/sk1_weekly.php?name=" + name + "&score=" + string(highscoree) + "&key1=" + string(key1) + "&key2=" + string(key2) + "&key3=" + string(key3) + "&key4=" + string(key4) + "&key5=" + string(key5));
            }
            else if highscoree > real(string_digits(global.scores_dodgev1_weekly[50])) {
                http_get("https://pauledevelopment.de/onlinescore/sk1/sk1_weekly.php?name=" + name + "&score=" + string(highscoree) + "&key1=" + string(key1) + "&key2=" + string(key2) + "&key3=" + string(key3) + "&key4=" + string(key4) + "&key5=" + string(key5));
            }
        }

        if global.scores_dodgev1_daily != 0 {
            if array_length_1d(global.scores_dodgev1_daily) < 51 {
                http_get("https://pauledevelopment.de/onlinescore/sk1/sk1_daily.php?name=" + name + "&score=" + string(highscoree) + "&key1=" + string(key1) + "&key2=" + string(key2) + "&key3=" + string(key3) + "&key4=" + string(key4) + "&key5=" + string(key5));
				
            }
            else if highscoree > real(string_digits(global.scores_dodgev1_daily[50])) {
                http_get("https://pauledevelopment.de/onlinescore/sk1/sk1_daily.php?name=" + name + "&score=" + string(highscoree) + "&key1=" + string(key1) + "&key2=" + string(key2) + "&key3=" + string(key3) + "&key4=" + string(key4) + "&key5=" + string(key5));
            }
        }


 

    send_data = 0;
}

if loading == 1 && loading_tick > 0{loading_tick--;}

if loading_tick = 0{
	loading_tick = 600;
	http_get("https://pauledevelopment.de/onlinescore/sk1/sk1.php?name=0&score=0&request=cGxzX2RvbnRfaGFja19tZQ==");
	http_get("https://pauledevelopment.de/onlinescore/sk1/sk1_daily.php?name=0&score=0&request=cGxzX2RvbnRfaGFja19tZQ==");
	http_get("https://pauledevelopment.de/onlinescore/sk1/sk1_weekly.php?name=0&score=0&request=cGxzX2RvbnRfaGFja19tZQ==");
}