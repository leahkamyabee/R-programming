complete <- function(directory, id = 1:332) {
    all <- list.files(directory, full.names = TRUE);
    my_complete <- data.frame();
    
    for (i in id) {
        My_data <- read.csv(all[i])
        my_sum <- sum (complete.cases(My_data))
        my_complete <- rbind(my_complete, c(i, my_sum))
    }
    
    names(my_complete) <- c("id", "nobs")
    return (my_complete)
}
