dadoslimpos = read.csv("dados-aula-7-limpos.csv", header=T, sep=",")

str(dadoslimpos)
head(dadoslimpos)

dadoslimpos$imc = dadoslimpos$peso / ((dadoslimpos$altura/100)**2)
dadoslimpos$faixa_etaria = ifelse(dadoslimpos$idade < 30, "Jovem",
                            ifelse(dadoslimpos$idade < 60, "Adulto", "Idoso"))
dadoslimpos$faixa_etaria = factor(dadoslimpos$faixa_etaria)

# 2. Distribuição de frequências e gráficos

# (PREENCHER NA BRANCH analise-graficos,)

# use comandos para distribuição de frequências de sexo, gráfico de colunas para faixa_etaria por sexo, histograma de altura, boxplot de IMC por sexo

#3. Medidas descritivas

# (PREENCHER NA BRANCH analise-medidas)

# use comandos de cálculo de mínimo, máximo, média, mediana e desvio-padrão para idade, altura, peso e IMC

