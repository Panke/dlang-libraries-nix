project('fixedpoint', 'd',
	version: '0.1.3'
)

sources = [
	'fixedpoint/arithmetic.d',
	'fixedpoint/fixed.d'
]

this_lib = library('fixedpoint',
	sources,
	include_directories: '.',
	install: true
)

this_dep = declare_dependency(
	include_directories: '.',
	link_with: this_lib,
)

pkgc = import('pkgconfig')
pkgc.generate(name: 'fixedpoint',
	subdirs: 'd/fixedpoint',
	version: meson.project_version(),
	description: 'fixed point decimal arithmetic',
	libraries: this_lib
)
install_headers(sources, subdir: 'd/')
