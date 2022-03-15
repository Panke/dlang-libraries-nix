project('deimos-zeromq', 'd',
	version: '6.1.2+zmq-4-3-2'
)

inc = include_directories('.')
clib = dependency('libzmq')

this_dep = declare_dependency(
	include_directories: inc,
	dependencies: clib
)

sources = [
	'./deimos/zmq/utils.d',
	'./deimos/zmq/zmq.d'
]

install_headers(
	sources,
	subdir: 'd/deimos/zmq'
)

pkgc = import('pkgconfig')
pkgc.generate(name: 'deimos-zeromq',
            	subdirs: 'd',
	            #version: meson.project_version(),
                description: 'Bindings to libzmq',
				requires: clib
)