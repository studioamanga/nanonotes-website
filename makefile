all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	cd ../../../Projects/iOS/NanoNotes/
	git pull
	cd ../../../Web/amg/nanonotes/
	cp ../../../Projects/iOS/NanoNotes/releasenotes.html .
	open .
	open /Applications/Cyberduck.app

watch:
	sass --watch style.scss:style.css