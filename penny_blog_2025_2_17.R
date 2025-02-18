# penny_blog_2025_x_y.R 
# Simulations (verification) of computations in a paper titled: "Whistleblowers and Financial Fraud."

setwd("~/Papers/Papers_non-academic/penny_removal_blog_2025_2")

# packages used
library(ggplot2); theme_set(theme_bw())
#library(latex2exp)# LaTeX in ggplot
#library(xtable)# export data frames to LaTeX tables
#library(dplyr)# sorting by group (by year)

# reading SEC award data from an Excel file
library(readxl)
dir()
(p1.df = read_excel("Coin payment simulations.xlsx"))
str(p1.df)

ggplot(p1.df, aes(x=Payment, y=Tokens_exchanged)) +geom_line(linetype="dotted", size=1.2) +geom_point(size=3.5, shape=16) +geom_line(aes(y=without_penny), linetype="dotted", color="red", size=1.2) +geom_point(aes(y=without_penny), color="red", size=3.5, shape=17) + scale_x_continuous(breaks = seq(1,25,1)) +theme(axis.text.x = element_text(size = 14, color = "black"),  axis.text.y = element_text(size = 16, color = "black"), text = element_text(size = 20)) +labs(x="Payment amount (cents)", y="Number of tokens exchanged")



# graph from earlier versions, no longer applies
#ggplot(p.df, aes(x=tau.vec)) +geom_line(aes(y=paI.vec), linetype="solid", size=1.2, color="black") +geom_line(aes(y=pbI.vec), linetype="solid", size=1.2, color="black") +geom_line(aes(y=paII.vec), linetype="longdash", size=1.2, color="red") +geom_line(aes(y=pbII.vec), linetype="longdash", size=1.2, color="red") +geom_line(aes(y=qaI.vec), linetype="solid", size=1.2, color="blue") +geom_line(aes(y=qbI.vec), linetype="solid", size=1.2, color="blue") +geom_line(aes(y=qaII.vec), linetype="longdash", size=1.2, color="magenta") +geom_line(aes(y=qbII.vec), linetype="longdash", size=1.2, color="magenta") + scale_x_continuous(breaks = seq(0,0.25,0.05)) + scale_y_continuous(breaks = seq(1.6,3.3,0.1)) +labs(x=TeX("Sales tax (VAT) rate: $\\tau$"), y=TeX("Equilibrium producer and consumer prices:  $p_B$, $q_B$, $p_A$,$q_A$"))  +theme(axis.text.x = element_text(size = 14, color = "black"),  axis.text.y = element_text(size = 16, color = "black"), text = element_text(size = 20)) +annotate("text", x = 0.225, y = 1.70, label =TeX("$p_B^I$"), size = 8, color="black") +annotate("text", x = 0.24, y = 2.08, label =TeX("$q_B^I$"), size = 8, color="blue") +annotate("text", x = 0.225, y = 1.90, label =TeX("$p_B^{II}$"), size = 8, color="red")  +annotate("text", x = 0.24, y = 2.39, label =TeX("$q_B^{II}$"), size = 8, color="magenta") +annotate("text", x = 0.20, y = 2.20, label =TeX("$p_A^I$"), size = 8, color="black") +annotate("text", x = 0.20, y = 2.54, label =TeX("$p_A^{II}$"), size = 8, color="red") +annotate("text", x = 0.15, y = 2.80, label =TeX("$q_A^I$"), size = 8, color="blue") +annotate("text", x = 0.15, y = 3.13, label =TeX("$q_A^{II}$"), size = 8, color="magenta") +annotate("text", x = -0.003, y = 1.94, label =TeX("B"), size = 8, color="black") +annotate("text", x = -0.003, y = 2.67, label =TeX("A"), size = 8, color="black")  


################
################