library(ballgown)
data(bg)

input <- function(inputfile) {
#gtfPath<<-system.file(inputfile)
gtfPath<<-inputfile
}

run <- function() {}

output <- function (outputfile) {
annot=gffReadGR(gtfPath, splitByTranscript=TRUE)
info = annotate_assembly(assembled=structure(bg)$trans, annotated=annot)
write.csv(info, outputfile)
}
