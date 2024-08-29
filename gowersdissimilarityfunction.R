# Requires one to define the column types of the variables in the data frame# 
# Could easily be adjusted to more than the number of variables below

asymm_var <- c(1)
numeric_var <- c(2, 6, 7)
ord_var <- c(3)
factor_var <- c(4,5)

for (i in 1:nrow(data_gower)){
  for(j in 1:nrow(data_gower)){
    if (is.na(data_gower[i, factor_var[1]]) | is.na(data_gower[j, factor_var[1]])) {
      delta_ijp <- 0 } else {delta_ijp <- 1}
    s_sm <- w_1 * sum(data_gower[i, factor_var[1]] == data_gower[j, factor_var[1]]) /
      delta_ijp
    if (is.na(data_gower[i, factor_var[2]]) | is.na(data_gower[j, factor_var[2]])) {
      delta_ijp <- 0 } else {delta_ijp <- 1}
    s_sm_2 <- w_2 * sum(data_gower[i, factor_var[2]] == data_gower[j, factor_var[2]])/
      delta_ijp
    if (is.na(data_gower[i, numeric_var[1]]) | is.na(data_gower[j, numeric_var[1]])) {
      delta_ijp <- 0 } else {delta_ijp <- 1}
    s_q <- 1 - w_3*abs(data_gower[i, numeric_var[1]]- data_gower[j, numeric_var[1]])/range(data_gower[,numeric_var[1]], na.rm = T)[2]/delta_ijp
    if (is.na(data_gower[i, numeric_var[2]]) | is.na(data_gower[j, numeric_var[2]])) {
      delta_ijp <- 0 } else {delta_ijp <- 1}
    s_q_2 <- 1 - w_4*abs(data_gower[i, numeric_var[2]]- data_gower[j, numeric_var[2]])/range(data_gower[,numeric_var[2]], na.rm = T)[2]/delta_ijp
    if (is.na(data_gower[i, ord_var[1]]) | is.na(data_gower[j, ord_var[1]])) {
      delta_ijp <- 0 } else {delta_ijp <- 1}
    z_ip <- ((match(data_gower[i, ord_var[1]],levels(data_gower[, ord_var[1]]))-1)/(length(levels(test_27[, ord_var[1]]))-1))
    z_jp <- ((match(data_gower[j, ord_var[1]],levels(data_gower[, ord_var[1]]))-1)/(length(levels(data_gower[,ord_var[1]]))-1))
    s_ord  <- (abs(z_ip - z_jp) * w_5)/delta_ijp
    s_ord <- 1-s_ord
    gower_mat[i, j] <- 1-sum(c(s_sm, s_sm_2,s_q, s_q_2, s_ord), na.rm = T)/(5-sum(is.na(c(c(s_sm, s_sm_2, s_q, s_q_2,  s_ord)))))
  }
}
