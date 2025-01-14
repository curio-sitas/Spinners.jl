# Design principles
# Respect the attention and focus of the user
#	Spinners are designed to grab attention, so use them judiciously.
# Animation should begin immediately
# 	If there is a long pause at the start, the user might think there is an issue.
#	:snail might need to be removed for this reason...
# Take care not to choose an already existing symbol for a new spinner

# Spinners created in this package by contributors
custom = Dict(
	:bar => "▁▂▃▄▅▆▇█▇▆▅▄▃▂▁",
	:blink => "⊙◡⊙⊙◡⊙⊙⊙⊙⊙⊙⊙",
	:bouncingBall2 => [
			"(●    )"
			"( ●   )"
			"(  ●  )"
			"(   ● )"
			"(    ●)"
			"(   ● )"
			"(  ●  )"
			"( ●   )"
		],
	:cards => [
			"🂠🂠🂠🂠🂠",
			"🂪🂠🂠🂠🂠",
			"🂪🂫🂠🂠🂠",
			"🂪🂫🂭🂠🂠",
			"🂪🂫🂭🂮🂠",
			"🂪🂫🂭🂮🂱",
			"🂪🂫🂭🂮🂱",
			"🂪🂫🂭🂮🂱",
			"🂪🂫🂭🂮🂱",
			"🂠🂫🂭🂮🂱",
			"🂠🂠🂭🂮🂱",
			"🂠🂠🂠🂮🂱",
			"🂠🂠🂠🂠🂱",
			"🂠🂠🂠🂠🂠",
			"🂠🂠🂠🂠🂠",
			"🂠🂠🂠🂠🂠",
			"🂠🂠🂠🂠🂠",
		],
	:clock2 => join([Char(i) for i in 0x1f550:0x1f55b]),
	:dots14 => join([Char(i) for i in 0x2800:0x28ff]),
		#  @show map(Unicode.julia_chartransform, x for x in s)
		# or just collect(s)
	:loading => [
			"Loading.    ",
			"Loading..   ",
			"Loading...  ",
			"Loading.... ",
			"Loading.....",
			"Loading.....",
			"Loading.....",
			"Loading.....",
		],
	:shutter => "▉▊▋▌▍▎▏▎▍▌▋▊▉",
	:snail => ["🐌        🏁"],
)

# Spinners from different sources
# Do not forget to cite the creators and add a reference in the LICENSE file.

# https://github.com/sindresorhus/cli-spinners
sindresorhus = Dict(

	:dots => "⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏",
	:dots2 => "⣾⣽⣻⢿⡿⣟⣯⣷",
	:dots3 => "⠋⠙⠚⠞⠖⠦⠴⠲⠳⠓",
	:dots4 => "⠄⠆⠇⠋⠙⠸⠰⠠⠰⠸⠙⠋⠇⠆",
	:dots5 => "⠋⠙⠚⠒⠂⠂⠒⠲⠴⠦⠖⠒⠐⠐⠒⠓⠋",
	:dots6 => "⠁⠉⠙⠚⠒⠂⠂⠒⠲⠴⠤⠄⠄⠤⠴⠲⠒⠂⠂⠒⠚⠙⠉⠁",
	:dots7 => "⠈⠉⠋⠓⠒⠐⠐⠒⠖⠦⠤⠠⠠⠤⠦⠖⠒⠐⠐⠒⠓⠋⠉⠈",
	:dots8 => "⠁⠁⠉⠙⠚⠒⠂⠂⠒⠲⠴⠤⠄⠄⠤⠠⠠⠤⠦⠖⠒⠐⠐⠒⠓⠋⠉⠈⠈",
	:dots9 => "⢹⢺⢼⣸⣇⡧⡗⡏",
	:dots10 => "⢄⢂⢁⡁⡈⡐⡠",
	:dots11 => "⠁⠂⠄⡀⢀⠠⠐⠈",
	:dots12 =>
		 [
			"⢀⠀",
			"⡀⠀",
			"⠄⠀",
			"⢂⠀",
			"⡂⠀",
			"⠅⠀",
			"⢃⠀",
			"⡃⠀",
			"⠍⠀",
			"⢋⠀",
			"⡋⠀",
			"⠍⠁",
			"⢋⠁",
			"⡋⠁",
			"⠍⠉",
			"⠋⠉",
			"⠋⠉",
			"⠉⠙",
			"⠉⠙",
			"⠉⠩",
			"⠈⢙",
			"⠈⡙",
			"⢈⠩",
			"⡀⢙",
			"⠄⡙",
			"⢂⠩",
			"⡂⢘",
			"⠅⡘",
			"⢃⠨",
			"⡃⢐",
			"⠍⡐",
			"⢋⠠",
			"⡋⢀",
			"⠍⡁",
			"⢋⠁",
			"⡋⠁",
			"⠍⠉",
			"⠋⠉",
			"⠋⠉",
			"⠉⠙",
			"⠉⠙",
			"⠉⠩",
			"⠈⢙",
			"⠈⡙",
			"⠈⠩",
			"⠀⢙",
			"⠀⡙",
			"⠀⠩",
			"⠀⢘",
			"⠀⡘",
			"⠀⠨",
			"⠀⢐",
			"⠀⡐",
			"⠀⠠",
			"⠀⢀",
			"⠀⡀"
		]
	,
	:dots13 => "⣼⣹⢻⠿⡟⣏⣧⣶",
	:dots8Bit => "⠀⠁⠂⠃⠄⠅⠆⠇⡀⡁⡂⡃⡄⡅⡆⡇⠈⠉⠊⠋⠌⠍⠎⠏⡈⡉⡊⡋⡌⡍⡎⡏⠐⠑⠒⠓⠔⠕⠖⠗⡐⡑⡒⡓⡔⡕⡖⡗⠘⠙⠚⠛⠜⠝⠞⠟⡘⡙⡚⡛⡜⡝⡞⡟⠠⠡⠢⠣⠤⠥⠦⠧⡠⡡⡢⡣⡤⡥⡦⡧⠨⠩⠪⠫⠬⠭⠮⠯⡨⡩⡪⡫⡬⡭⡮⡯⠰⠱⠲⠳⠴⠵⠶⠷⡰⡱⡲⡳⡴⡵⡶⡷⠸⠹⠺⠻⠼⠽⠾⠿⡸⡹⡺⡻⡼⡽⡾⡿⢀⢁⢂⢃⢄⢅⢆⢇⣀⣁⣂⣃⣄⣅⣆⣇⢈⢉⢊⢋⢌⢍⢎⢏⣈⣉⣊⣋⣌⣍⣎⣏⢐⢑⢒⢓⢔⢕⢖⢗⣐⣑⣒⣓⣔⣕⣖⣗⢘⢙⢚⢛⢜⢝⢞⢟⣘⣙⣚⣛⣜⣝⣞⣟⢠⢡⢢⢣⢤⢥⢦⢧⣠⣡⣢⣣⣤⣥⣦⣧⢨⢩⢪⢫⢬⢭⢮⢯⣨⣩⣪⣫⣬⣭⣮⣯⢰⢱⢲⢳⢴⢵⢶⢷⣰⣱⣲⣳⣴⣵⣶⣷⢸⢹⢺⢻⢼⢽⢾⢿⣸⣹⣺⣻⣼⣽⣾⣿",
	:sand => "⠁⠂⠄⡀⡈⡐⡠⣀⣁⣂⣄⣌⣔⣤⣥⣦⣮⣶⣷⣿⡿⠿⢟⠟⡛⠛⠫⢋⠋⠍⡉⠉⠑⠡⢁",
	:line => "-\\|/",
	:line2 => "⠂-–—–-",
	:pipe => "┤┘┴└├┌┬┐",
	:simpleDots =>
		 [
			".  ",
			".. ",
			"...",
			"   "
		]
	,
	:simpleDotsScrolling =>
		 [
			".  ",
			".. ",
			"...",
			" ..",
			"  .",
			"   "
		]
	,
	:star => "✶✸✹✺✹✷",
	:star2 => "+x*",
	:flip => "___-``'´-___",
	:hamburger => "☱☲☴",
	:growVertical => "▁▃▄▅▆▇▆▅▄▃",
	:growHorizontal => "▏▎▍▌▋▊▉▊▋▌▍▎",
	:balloon => " .oO@* ",
	:balloon2 => ".oO°Oo.",
	:noise => "▓▒░",
	:bounce => "⠁⠂⠄⠂",
	:boxBounce => "▖▘▝▗",
	:boxBounce2 => "▌▀▐▄",
	:triangle => "◢◣◤◥",
	:arc => "◜◠◝◞◡◟",
	:circle => "◡⊙◠",
	:squareCorners => "◰◳◲◱",
	:circleQuarters => "◴◷◶◵",
	:circleHalves => "◐◓◑◒",
	:squish => "╫╪",
	:toggle => "⊶⊷",
	:toggle2 => "▫▪",
	:toggle3 => "□■",
	:toggle4 => "■□▪▫",
	:toggle5 => "▮▯",
	:toggle6 => "ဝ၀",
	:toggle7 => "⦾⦿",
	:toggle8 => "◍◌",
	:toggle9 => "◉◎",
	:toggle10 => "㊂㊀㊁",
	:toggle11 => "⧇⧆",
	:toggle12 => "☗☖",
	:toggle13 => "=*-",
	:arrow => "←↖↑↗→↘↓↙",
	:arrow2 =>
		 [
			"⬆️ ",
			"↗️ ",
			"➡️ ",
			"↘️ ",
			"⬇️ ",
			"↙️ ",
			"⬅️ ",
			"↖️ "
		]
	,
	:arrow3 =>
		 [
			"▹▹▹▹▹",
			"▸▹▹▹▹",
			"▹▸▹▹▹",
			"▹▹▸▹▹",
			"▹▹▹▸▹",
			"▹▹▹▹▸"
		]
	,
	:bouncingBar =>
		 [
			"[    ]",
			"[=   ]",
			"[==  ]",
			"[=== ]",
			"[ ===]",
			"[  ==]",
			"[   =]",
			"[    ]",
			"[   =]",
			"[  ==]",
			"[ ===]",
			"[====]",
			"[=== ]",
			"[==  ]",
			"[=   ]"
		]
	,
	:bouncingBall =>
		 [
			"( ●    )",
			"(  ●   )",
			"(   ●  )",
			"(    ● )",
			"(     ●)",
			"(    ● )",
			"(   ●  )",
			"(  ●   )",
			"( ●    )",
			"(●     )"
		]
	,
	:smiley =>
		 [
			"😄 ",
			"😝 "
		]
	,
	:monkey =>
		 [
			"🙈 ",
			"🙈 ",
			"🙉 ",
			"🙊 "
		]
	,
	:hearts =>
		 [
			"💛 ",
			"💙 ",
			"💜 ",
			"💚 ",
			"❤️ "
		]
	,
	:clock =>
		 [
			"🕛 ",
			"🕐 ",
			"🕑 ",
			"🕒 ",
			"🕓 ",
			"🕔 ",
			"🕕 ",
			"🕖 ",
			"🕗 ",
			"🕘 ",
			"🕙 ",
			"🕚 "
		]
	,
	:earth =>
		 [
			"🌍 ",
			"🌎 ",
			"🌏 "
		]
	,
	:material =>
		 [
			"█▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁",
			"██▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁",
			"███▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁",
			"████▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁",
			"██████▁▁▁▁▁▁▁▁▁▁▁▁▁▁",
			"██████▁▁▁▁▁▁▁▁▁▁▁▁▁▁",
			"███████▁▁▁▁▁▁▁▁▁▁▁▁▁",
			"████████▁▁▁▁▁▁▁▁▁▁▁▁",
			"█████████▁▁▁▁▁▁▁▁▁▁▁",
			"█████████▁▁▁▁▁▁▁▁▁▁▁",
			"██████████▁▁▁▁▁▁▁▁▁▁",
			"███████████▁▁▁▁▁▁▁▁▁",
			"█████████████▁▁▁▁▁▁▁",
			"██████████████▁▁▁▁▁▁",
			"██████████████▁▁▁▁▁▁",
			"▁██████████████▁▁▁▁▁",
			"▁██████████████▁▁▁▁▁",
			"▁██████████████▁▁▁▁▁",
			"▁▁██████████████▁▁▁▁",
			"▁▁▁██████████████▁▁▁",
			"▁▁▁▁█████████████▁▁▁",
			"▁▁▁▁██████████████▁▁",
			"▁▁▁▁██████████████▁▁",
			"▁▁▁▁▁██████████████▁",
			"▁▁▁▁▁██████████████▁",
			"▁▁▁▁▁██████████████▁",
			"▁▁▁▁▁▁██████████████",
			"▁▁▁▁▁▁██████████████",
			"▁▁▁▁▁▁▁█████████████",
			"▁▁▁▁▁▁▁█████████████",
			"▁▁▁▁▁▁▁▁████████████",
			"▁▁▁▁▁▁▁▁████████████",
			"▁▁▁▁▁▁▁▁▁███████████",
			"▁▁▁▁▁▁▁▁▁███████████",
			"▁▁▁▁▁▁▁▁▁▁██████████",
			"▁▁▁▁▁▁▁▁▁▁██████████",
			"▁▁▁▁▁▁▁▁▁▁▁▁████████",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁███████",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁██████",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁█████",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁█████",
			"█▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁████",
			"██▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁███",
			"██▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁███",
			"███▁▁▁▁▁▁▁▁▁▁▁▁▁▁███",
			"████▁▁▁▁▁▁▁▁▁▁▁▁▁▁██",
			"█████▁▁▁▁▁▁▁▁▁▁▁▁▁▁█",
			"█████▁▁▁▁▁▁▁▁▁▁▁▁▁▁█",
			"██████▁▁▁▁▁▁▁▁▁▁▁▁▁█",
			"████████▁▁▁▁▁▁▁▁▁▁▁▁",
			"█████████▁▁▁▁▁▁▁▁▁▁▁",
			"█████████▁▁▁▁▁▁▁▁▁▁▁",
			"█████████▁▁▁▁▁▁▁▁▁▁▁",
			"█████████▁▁▁▁▁▁▁▁▁▁▁",
			"███████████▁▁▁▁▁▁▁▁▁",
			"████████████▁▁▁▁▁▁▁▁",
			"████████████▁▁▁▁▁▁▁▁",
			"██████████████▁▁▁▁▁▁",
			"██████████████▁▁▁▁▁▁",
			"▁██████████████▁▁▁▁▁",
			"▁██████████████▁▁▁▁▁",
			"▁▁▁█████████████▁▁▁▁",
			"▁▁▁▁▁████████████▁▁▁",
			"▁▁▁▁▁████████████▁▁▁",
			"▁▁▁▁▁▁███████████▁▁▁",
			"▁▁▁▁▁▁▁▁█████████▁▁▁",
			"▁▁▁▁▁▁▁▁█████████▁▁▁",
			"▁▁▁▁▁▁▁▁▁█████████▁▁",
			"▁▁▁▁▁▁▁▁▁█████████▁▁",
			"▁▁▁▁▁▁▁▁▁▁█████████▁",
			"▁▁▁▁▁▁▁▁▁▁▁████████▁",
			"▁▁▁▁▁▁▁▁▁▁▁████████▁",
			"▁▁▁▁▁▁▁▁▁▁▁▁███████▁",
			"▁▁▁▁▁▁▁▁▁▁▁▁███████▁",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁███████",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁███████",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁█████",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁████",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁████",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁████",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁███",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁███",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁██",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁██",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁██",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁█",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁█",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁█",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁",
			"▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁"
		]
	,
	:moon =>
		 [
			"🌑 ",
			"🌒 ",
			"🌓 ",
			"🌔 ",
			"🌕 ",
			"🌖 ",
			"🌗 ",
			"🌘 "
		]
	,
	:runner =>
		 [
			"🚶 ",
			"🏃 "
		]
	,
	:pong =>
		 [
			"▐⠂       ▌",
			"▐⠈       ▌",
			"▐ ⠂      ▌",
			"▐ ⠠      ▌",
			"▐  ⡀     ▌",
			"▐  ⠠     ▌",
			"▐   ⠂    ▌",
			"▐   ⠈    ▌",
			"▐    ⠂   ▌",
			"▐    ⠠   ▌",
			"▐     ⡀  ▌",
			"▐     ⠠  ▌",
			"▐      ⠂ ▌",
			"▐      ⠈ ▌",
			"▐       ⠂▌",
			"▐       ⠠▌",
			"▐       ⡀▌",
			"▐      ⠠ ▌",
			"▐      ⠂ ▌",
			"▐     ⠈  ▌",
			"▐     ⠂  ▌",
			"▐    ⠠   ▌",
			"▐    ⡀   ▌",
			"▐   ⠠    ▌",
			"▐   ⠂    ▌",
			"▐  ⠈     ▌",
			"▐  ⠂     ▌",
			"▐ ⠠      ▌",
			"▐ ⡀      ▌",
			"▐⠠       ▌"
		]
	,
	:shark =>
		 [
			"▐|\\____________▌",
			"▐_|\\___________▌",
			"▐__|\\__________▌",
			"▐___|\\_________▌",
			"▐____|\\________▌",
			"▐_____|\\_______▌",
			"▐______|\\______▌",
			"▐_______|\\_____▌",
			"▐________|\\____▌",
			"▐_________|\\___▌",
			"▐__________|\\__▌",
			"▐___________|\\_▌",
			"▐____________|\\▌",
			"▐____________/|▌",
			"▐___________/|_▌",
			"▐__________/|__▌",
			"▐_________/|___▌",
			"▐________/|____▌",
			"▐_______/|_____▌",
			"▐______/|______▌",
			"▐_____/|_______▌",
			"▐____/|________▌",
			"▐___/|_________▌",
			"▐__/|__________▌",
			"▐_/|___________▌",
			"▐/|____________▌"
		]
	,
	:dqpb => "dqpb",
	:weather =>
		 [
			"☀️ ",
			"☀️ ",
			"☀️ ",
			"🌤 ",
			"⛅️ ",
			"🌥 ",
			"☁️ ",
			"🌧 ",
			"🌨 ",
			"🌧 ",
			"🌨 ",
			"🌧 ",
			"🌨 ",
			"⛈ ",
			"🌨 ",
			"🌧 ",
			"🌨 ",
			"☁️ ",
			"🌥 ",
			"⛅️ ",
			"🌤 ",
			"☀️ ",
			"☀️ "
		]
	,
	:christmas =>
		 [
			"🌲",
			"🎄"
		]
	,
	:grenade =>
		 [
			"،  ",
			"′  ",
			" ´ ",
			" ‾ ",
			"  ⸌",
			"  ⸊",
			"  |",
			"  ⁎",
			"  ⁕",
			" ෴ ",
			"  ⁓",
			"   ",
			"   ",
			"   "
		]
	,
	:point =>
		 [
			"∙∙∙",
			"●∙∙",
			"∙●∙",
			"∙∙●",
			"∙∙∙"
		]
	,
	:layer => "-=≡",
	:betaWave =>
		 [
			"ρββββββ",
			"βρβββββ",
			"ββρββββ",
			"βββρβββ",
			"ββββρββ",
			"βββββρβ",
			"ββββββρ"
		]
	,
	:fingerDance =>
		 [
			"🤘 ",
			"🤟 ",
			"🖖 ",
			"✋ ",
			"🤚 ",
			"👆 "
		]
	,
	:fistBump =>
		 [
			"🤜\u3000\u3000\u3000\u3000🤛 ",
			"🤜\u3000\u3000\u3000\u3000🤛 ",
			"🤜\u3000\u3000\u3000\u3000🤛 ",
			"\u3000🤜\u3000\u3000🤛\u3000 ",
			"\u3000\u3000🤜🤛\u3000\u3000 ",
			"\u3000🤜✨🤛\u3000\u3000 ",
			"🤜\u3000✨\u3000🤛\u3000 "
		]
	,
	:soccerHeader =>
		 [
			" 🧑⚽️       🧑 ",
			"🧑  ⚽️      🧑 ",
			"🧑   ⚽️     🧑 ",
			"🧑    ⚽️    🧑 ",
			"🧑     ⚽️   🧑 ",
			"🧑      ⚽️  🧑 ",
			"🧑       ⚽️🧑  ",
			"🧑      ⚽️  🧑 ",
			"🧑     ⚽️   🧑 ",
			"🧑    ⚽️    🧑 ",
			"🧑   ⚽️     🧑 ",
			"🧑  ⚽️      🧑 "
		]
	,
	:mindblown =>
		 [
			"😐 ",
			"😐 ",
			"😮 ",
			"😮 ",
			"😦 ",
			"😦 ",
			"😧 ",
			"😧 ",
			"🤯 ",
			"💥 ",
			"✨ ",
			"\u3000 ",
			"\u3000 ",
			"\u3000 "
		]
	,
	:speaker =>
		 [
			"🔈 ",
			"🔉 ",
			"🔊 ",
			"🔉 "
		]
	,
	:orangePulse =>
		 [
			"🔸 ",
			"🔶 ",
			"🟠 ",
			"🟠 ",
			"🔶 "
		]
	,
	:bluePulse =>
		 [
			"🔹 ",
			"🔷 ",
			"🔵 ",
			"🔵 ",
			"🔷 "
		]
	,
	:orangeBluePulse =>
		 [
			"🔸 ",
			"🔶 ",
			"🟠 ",
			"🟠 ",
			"🔶 ",
			"🔹 ",
			"🔷 ",
			"🔵 ",
			"🔵 ",
			"🔷 "
		]
	,
	:timeTravel =>
		 [
			"🕛 ",
			"🕚 ",
			"🕙 ",
			"🕘 ",
			"🕗 ",
			"🕖 ",
			"🕕 ",
			"🕔 ",
			"🕓 ",
			"🕒 ",
			"🕑 ",
			"🕐 "
		]
	,
	:aesthetic =>
		 [
			"▰▱▱▱▱▱▱",
			"▰▰▱▱▱▱▱",
			"▰▰▰▱▱▱▱",
			"▰▰▰▰▱▱▱",
			"▰▰▰▰▰▱▱",
			"▰▰▰▰▰▰▱",
			"▰▰▰▰▰▰▰",
			"▰▱▱▱▱▱▱"
		]


)
