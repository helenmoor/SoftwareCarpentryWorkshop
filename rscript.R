# read in cats data
cats <- read.csv(file = "data/feline-data.csv")#, stringsAsFactors = F) # could read stringsAsFactor=F
# typeof(cats$coat) #  determines the (R internal) type or storage mode  -- is integer
# str(cats)  # factor
# typeof(cats$likes_string) # could convert this to logical

typeof(TRUE) # logical
typeof(3.14) # double
typeof(3) # double -> to really get integer: type 3L
typeof(3L) # integer
typeof(1+1i) # complex

# vector1 <- vector(length=3) # creates logical
# vector2 <- vector(mode = "character", length=3) # 3 empty character type elements

# basic r material for teaching online (teaching: show, make them do, repeat, find out themselves...)

# in between work on cats data, cleaning data (keep raw data as is)

if(!dir.exists("clean_data")){  # if doesnt exist yet, create dir
    dir.create("clean_data", showWarnings = FALSE)
}
write.csv(cats, file = "clean_data/feline-data-c.csv", row.names = FALSE)

