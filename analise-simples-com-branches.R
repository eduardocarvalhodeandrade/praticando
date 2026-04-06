dadoslimpos = read.csv("dados-aula-7-limpos.csv", header=T, sep=",")

str(dadoslimpos)
head(dadoslimpos)

dadoslimpos$imc = dadoslimpos$peso / ((dadoslimpos$altura/100)**2)
dadoslimpos$faixa_etaria = ifelse(dadoslimpos$idade < 30, "Jovem",
                            ifelse(dadoslimpos$idade < 60, "Adulto", "Idoso"))
dadoslimpos$faixa_etaria = factor(dadoslimpos$faixa_etaria)

table(dados$sexo)
barplot(table(dadoslimpos$faixa_etaria, dadoslimpos$sexo), beside = TRUE, legend
        = TRUE)
hist(dadoslimpos$altura)
boxplot(dadoslimpos$imc ~ dadoslimpos$sexo)

minimo_idade = min(dadoslimpos$idade)
maximo_idade = max(dadoslimpos$idade)
mediana_idade = median(dadoslimpos$idade)
media_idade = mean(dadoslimpos$idade)
desvio_idade = sd(dadoslimpos$idade)
minimo_peso = min(dadoslimpos$peso)
maximo_peso = max(dadoslimpos$peso)
mediana_peso = median(dadoslimpos$peso)
media_peso = mean(dadoslimpos$peso)
desvio_peso = sd(dadoslimpos$peso)
minimo_altura = min(dadoslimpos$altura)
maximo_altura = max(dadoslimpos$altura)
mediana_altura = median(dadoslimpos$altura)
media_altura = mean(dadoslimpos$altura)
desvio_altura = sd(dadoslimpos$altura)

minimo_imc = min(dadoslimpos$imc)
maximo_imc = max(dadoslimpos$imc)
mediana_imc = median(dadoslimpos$imc)
media_imc = mean(dadoslimpos$imc)
desvio_imc = sd(dadoslimpos$imc)
