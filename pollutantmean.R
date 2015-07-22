pollutantmean <- function(directory, pollutant, id = 1:332) {
    all <- list.files(directory, full.names = TRUE)
    My_Data <- data.frame()
    for (i in id) {
        My_Data <- rbind(My_Data, read.csv(all[i]))
    }
    mean(My_Data[[pollutant]], na.rm = TRUE)
}
