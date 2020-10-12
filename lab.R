e1 <-new.env(parent = baseenv())
  assign("x",
         c(read.table("1.txt", header = FALSE)),
         envir = e1,
  )
  
e2 <-new.env(parent = baseenv())
  assign("x",
         c(read.table("2.txt", header = FALSE)),
         envir = e2
  )
  
e3 <-new.env(parent = baseenv())
  assign("x",
         c(read.table("3.txt", header = FALSE)),
         envir = e3
  )
  
e4 <-new.env(parent = baseenv())
  assign("x",
         c(read.table("4.txt", header = FALSE)),
         envir = e4
  )
  
e5 <-new.env(parent = baseenv())
  assign("x",
         c(read.table("5.txt", header = FALSE)),
         envir = e5
         )

  g1 <- function(x) return(sin(x))
  g2 <- function(e1) return(sqrt(x^2+1))
  g3 <- function(e2) return(2*x-1)
  g4 <- function(e3) return(2*x-1)
  g5 <- function(e4) return(2*x-1)
  plot(c(0,1), c(-1,1.5))
  for (f in c(g1, g2, g3, g4, g5)) plot(f, 0,1, add=T)
  
  df <- data.frame( rbind(
    get("x", envir = e1),
    get("x", envir = e2),
    get("x", envir = e3),
    get("x", envir = e4),
    get("x", envir = e5)
  ))
  df