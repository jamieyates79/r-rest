# JSONlite tutorial here https://cran.r-project.org/web/packages/jsonlite/vignettes/json-aaquickstart.html

# The purpose of this code is to create a function which when passed a PNR can return the itinerary using the 
# booking retrieve web service


library(jsonlite)
library(RCurl)

PNR <- "C6MF7Q"
URL <- "https://api.flybe.com/booking-retrieve-service/retrievewithfares/"

makeCall <- paste(URL,PNR, sep = "") # 

APIResponse <- fromJSON(makeCall, simplifyVector = FALSE)

APIResponse$booking$airItinerary$originDestinationOptions$originDestinationOption$FlightSegment
