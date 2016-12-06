library(psych)
setwd("~/TCC/Working/Nov2016")
priv <- read.csv2("[3.b]ENEM-TURMAS--PRIV--V1--24-11-2016.csv")
pub <- read.csv2("[3.b]ENEM-TURMAS--PUB--V1--25-11-2016.csv")


mtpub <- data.frame(pub$mat, pub$znotaMT)
corr.test(na.omit(mtpub), method="pearson")

mtpriv <- data.frame(priv$mat, priv$znotaMT)
corr.test(na.omit(mtpriv), method="pearson")

#----
cnpub <- data.frame(pub$fisica, pub$mat, pub$quimica, pub$bio, pub$znotaCN)
corr.test(na.omit(cnpub), method="pearson")

cnpriv <- data.frame(priv$fisica, priv$mat, priv$quimica, priv$bio, priv$znotaCN)
corr.test(na.omit(cnpriv), method="pearson")

#----

chpub <- data.frame(pub$geo, pub$hist, pub$socilogia, pub$filosofia, pub$znotaCH)
corr.test(na.omit(chpub), method="pearson")

chpriv <- data.frame(priv$geo, priv$hist, priv$socilogia, priv$filosofia, priv$znotaCH)
corr.test(na.omit(chpriv), method="pearson")

#----

lcpub <- data.frame(pub$port, pub$ing, pub$esp, pub$znotaLC)
corr.test(na.omit(lcpub), method="pearson")

lcpriv <- data.frame(priv$port, priv$ing, priv$esp, priv$znotaLC)
corr.test(na.omit(lcpriv), method="pearson")
