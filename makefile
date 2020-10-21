all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	git -C ../../../Projects/iOS/NanoNotes/ pull
	cp ../../../Projects/iOS/NanoNotes/releasenotes.html .
	open .
	open /Applications/Cyberduck.app

watch:
	sass --watch style.scss:style.css