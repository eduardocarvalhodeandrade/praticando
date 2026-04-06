dadoslimpos = read.csv("dados-aula-7-limpos.csv", header=T, sep=",")

str(dadoslimpos)
head(dadoslimpos)

dadoslimpos$imc = dadoslimpos$peso / ((dadoslimpos$altura/100)**2)
dadoslimpos$faixa_etaria = ifelse(dadoslimpos$idade < 30, "Jovem",
                            ifelse(dadoslimpos$idade < 60, "Adulto", "Idoso"))
dadoslimpos$faixa_etaria = factor(dadoslimpos$faixa_etaria)

#table(dados$sexo)
barplot(table(dadoslimpos$faixa_etaria, dadoslimpos$sexo), beside = TRUE, legend
        = TRUE)
hist(dadoslimpos$altura)
boxplot(dadoslimpos$imc ~ dadoslimpos$sexo)

