all: index.html index.pdf

index.html: index.Rmd
	- Rscript -e "rmarkdown::render('index.Rmd')"

index.pdf: index.html index.Rmd 
	electron-pdf index.html index.pdf --landscape
