x <- cc("50px 150px, 127px 285px, 204px 150px, 281px 285px, 204px 420px, 127px 15px")
x <- unlist(strsplit(gsub("^\\s|px", "", x), "\\s"))
x <- as.numeric(x)
x <- tibble::as.tibble(matrix(x, ncol = 2, byrow = TRUE))
names(x) <- c("x", "y")
x$x <- x$x + 40
x$y <- x$y + 35

x$x <- x$x + 350
x <- apply(x, 1, function(x) paste(paste0(x, "px"), collapse = " "))
pbcopy(paste(x, collapse = ", "))
