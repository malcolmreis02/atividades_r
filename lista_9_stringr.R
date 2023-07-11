library(lubridate)
library(stringr)

# 1
extrai_meio <- function(string) {
  qnt <- str_length(string)
  if (qnt%%2 != 0) {
    qnt <- (qnt/2) + 0.5
    str_sub(string, start = qnt, end = qnt)
  }
  else {
    qnt <- qnt/2
    str_sub(string, start = qnt, end = qnt + 1)
  }
}
extrai_meio("testes")

# 2
produtos <- c("TV ", " laptop", "carregador portátil",
              "teclado Wireless", " Fones de ouvido ")
produtos <- str_trim(produtos) # tirando os espaços
str_to_title(produtos) #primeira letra maiuscula

# 3
field_names <- c("order_number", "order_date", "customer_email",
                 "product_title", "amount")
field2 <- str_to_title(str_replace_all(field_names, pattern = "_", replacement = " "))
# max(str_length(str_extract(field2, pattern = "[:alpha:]+.")))
maior <- max(str_length(field2))
str_pad(field2, maior, "left")

# 4
junta_nomes <- function(vetor) {
  vetor <- str_trim(str_to_title(vetor))
  tamanho <- length(vetor)
  if (tamanho == 0) {
    retorno <- ''
  }
  if (tamanho == 1) {
    retorno <- str_c(vetor)
  }
  if (tamanho == 2) {
    retorno <- str_c(vetor[1], vetor[2], sep = " e ")
  }
  else {
    virgula <- str_c(vetor, collapse = ", ")
    ultima_virgula <- str_replace(virgula, pattern = ", $", replacement = " e ")
    retorno <- ultima_virgula
  }
  print(retorno)
}
vetor <- c("José", "maria", "Sara", "CAIO")
junta_nomes(nomes)














