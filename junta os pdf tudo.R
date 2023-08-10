library(qpdf) ## pacote para ler, combinar, dividir e comprimir pdf
library(beepr) ## apita quando termina de rodar o código

setwd("./diretorio_com_os_pdfs") ## define a pasta em que estão os pdfs
arquivos <- list.files(path = ".") ## lê o nome dos arquivos que serão unidos
dir.create(path = "./output") ## cria um diretório para salvar o pdf unido
qpdf::pdf_combine(input = arquivos, ## lista de arquivos a serem unidos
                  output = "./output/pdf_unido.pdf")  ## salva o arquivo unido na pasta output
beep() ## apita, útil pra quando são muitos pdfs, testei com 14, não demorou muito, deu uma mensagem de alerta, mas funcionou...

