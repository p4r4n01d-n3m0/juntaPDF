junta_pdf <- function(input.dir = "C:/Path/To/Files",  ## define the directory with the files to merge
                      output.dir = "output", ## define the name for the output directory
                      name = "merged"){ ## define the name of the merged file
        if(require(qpdf) == T){library(qpdf)} else {install.packages("qpdf") | library(qpdf)} ## load the qpdf package, install it if needed
        setwd(input.dir) ## define the directory with the files as workin directory
        files_to_merge <- list.files(path = ".", pattern = "\\.pdf$", full.names = T) ## list the files to merge
        dir.create(path = paste0("./",output.dir)) ## create the output directory
        pdf_combine(input = files_to_merge, output = paste0(output.dir,"/",name,".pdf")) ## combine the files
}
