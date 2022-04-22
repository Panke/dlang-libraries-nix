project('arsd', 'd',
	version: '10.8.2'
)

sources = [
	'xwindows.d',
	'wmutil.d',
	'webview.d',
	'webtemplate.d',
	'web.d',
	'wav.d',
	'vorbis.d',
	'ttf.d',
	'terminalemulator.d',
	'terminal.d',
	'targa.d',
	'svg.d',
	'stb_truetype.d',
	'sslsocket.d',
	'sqlite.d',
	'simpledisplay.d',
	'simpleaudio.d',
	'sha.d',
	'script.d',
	#'screen.d', # needs SDL
	#'rtud.d', # obsolete, requires std.date
	'rss.d',
	'rpc.d',
	'querygenerator.d',
	'qrcode.d',
	'postgres.d',
	'png.d',
	'pcx.d',
	'package.d',
	'oauth.d',
	'nukedopl3.d',
	'nanovega.d',
	'mysql.d',
	'mvd.d',
	'mssql.d',
	'mp3.d',
	'minigui_xml.d',
	'minigui.d',
	'midiplayer.d',
	'midi.d',
	'mangle.d',
	'mailserver.d',
	'libssh2.d',
	'jsvar.d',
	'jpg.d',
	'jpeg.d',
	'joystick.d',
	'jni.d',
	'imageresize.d',
	'image.d',
	'http2.d',
	'http.d',
	#'htmlwidget.d', # needs a -J
	'htmltotext.d',
	'html.d',
	'hmac.d',
	'gpio.d',
	'generatedomcases.d',
	'gamehelpers.d',
	'game.d',
	'fibersocket.d',
	'exception.d',
	'eventloop.d',
	'english.d',
	#'engine.d', # needs SDL
	'email.d',
	'dom.d',
	'declarativeloader.d',
	'dds.d',
	'dbus.d',
	'database_generation.d',
	'database.d',
	'curl.d',
	'csv.d',
	#'comhelpers.d', # windows
	#'com.d', ## ditto
	'color.d',
	'cidr.d',
	'characterencodings.d',
	'cgi.d',
	'bmp.d',
	'blendish.d',
	#'audio.d', # SDL
	'argon2.d',
	'archive.d',
	#'apng.d'
]


this_lib = library('arsd',
	sources,
	include_directories: '..',
	install: true
)

this_dep = declare_dependency(
	include_directories: '..',
	link_with: this_lib,
)

pkgc = import('pkgconfig')
pkgc.generate(name: 'arsd',
	subdirs: 'd',
	version: meson.project_version(),
	description: 'Adam Ruppes libraries',
	libraries: this_lib
)
install_headers(sources, subdir: 'd/arsd')
