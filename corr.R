corr <- function(directory, threshold = 0) {
    all <- list.files(directory, pattern="*.csv", full.names=TRUE)
    my_data <- data.frame()
    for (i in 1:length(all)) {
        my_data <- rbind(my_data, read.csv(all[i]))
    }
    my_data <- my_data [complete.cases(my_data)== "TRUE",]
    my_vector <- numeric()
    for (j in 1:length(all)) {
        data <- subset(my_data, my_data[,4]==j) 
        numrows <- nrow(data)
        if (numrows > threshold) {
            cor_list <- cor(data$sulfate, data$nitrate)
            my_vector <- c(my_vector, cor_list)
        }
    }
    return(my_vector)
}
