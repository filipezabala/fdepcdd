# https://bookdown.org/yihui/bookdown/
# https://github.com/yihui/bookdown-crc
# https://github.com/kittykatattack/thepoetrybook/blob/master/book.markdown
# https://yihui.org/tinytex/r/#debugging

# https://tex.stackexchange.com/questions/75166/error-in-tex-live-font-not-loadable-metric-tfm-file-not-found/75260#75260
# sudo tlmgr install collection-latexrecommended
# sudo tlmgr install collection-fontsrecommended
# sudo tlmgr install wasysym
# sudo tlmgr update --self
# sudo tlmgr update --all
# sudo tlmgr search --file wasy10.tfm --global


bookdown::render_book('index.Rmd', 'bookdown::gitbook'); Sys.time()
bookdown::render_book('index.Rmd', 'bookdown::pdf_book'); Sys.time()
# bookdown::render_book('index.Rmd', 'bookdown::html_book'); Sys.time()
# bookdown::render_book('index.Rmd', 'bookdown::tufte_html_book'); Sys.time()

# debugging (pdf_book)
update.packages(ask = FALSE, checkBuilt = TRUE)
tinytex::tlmgr_update()
tinytex::reinstall_tinytex()
# tinytex::reinstall_tinytex(force = TRUE)
tinytex:::install_prebuilt()
options(tinytex.verbose = TRUE)
tinytex::tinytex_root()
