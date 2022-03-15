project('zmqd', 'd',
	version: '1.2.0'
)

zeromq_dep = dependency('deimos-zeromq', fallback: ['deimos-zeromq', 'this_dep'])

this_lib = library('zmqd', 'src/zmqd.d', dependencies: zeromq_dep, install: true)

this_dep = declare_dependency(
	include_directories: 'src',
	link_with: this_lib,
	dependencies: zeromq_dep
)

pkgc = import('pkgconfig')
pkgc.generate(name: 'zmqd',
	subdirs: 'd/zmqd',
	version: meson.project_version(),
	description: 'High level bindings to zeromq',
	requires: zeromq_dep,
	libraries: this_lib
)
install_headers('src/zmqd.d', subdir: 'd/zmqd')