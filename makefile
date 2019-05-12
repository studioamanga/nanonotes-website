all:
	haml -f html5 index.html.haml index.html
	sass style.scss:style.css
	
watch:
	sass --watch style.scss:style.css