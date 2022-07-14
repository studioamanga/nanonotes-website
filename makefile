all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	git -C ~/Developer/NanoNotes/ pull
	cp ~/Developer/NanoNotes/releasenotes.html .
	cp ~/Developer/NanoNotes/releasenotes.json .
	open .
	open /Applications/Cyberduck.app

watch:
	sass --watch style.scss:style.css