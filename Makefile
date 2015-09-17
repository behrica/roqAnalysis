all: analysis.html

R_OPTS=--no-save --no-restore --no-init-file --no-site-file # vanilla, but with --environ

analysis.html: analysis.Rmd
	R ${R_OPTS} -e "rmarkdown::render('analysis.Rmd')"

clean:
	rm analysis.html
