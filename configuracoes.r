setwd("~/ME115/youtube")

library(rsconnect)

rsconnect::setAccountInfo(name='gabybaratela',
                          token='CC625F92186DB75EF3FE0DF8E1786E63',
                          secret='cblQZwTWXHoSjaAFcbX6nkOyY3iRb9lAP/8FUVwB')


rsconnect::deployApp()
