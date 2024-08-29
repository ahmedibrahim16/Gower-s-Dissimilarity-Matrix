print(all(gower_mat>= 0)) # Non-negativity

print(all(gower_mat == t(gower_mat))) # Symmetry

print(all(diag(gower_mat) == 0)) # Identity of indiscernibles

check_triangle_inequality <- function(gower_mat) { 
  for (i in seq(1:nrow(gower_mat))) {
    for (j in seq(1:nrow(gower_mat))[!(seq(1:nrow(gower_mat)) %in% i)]) {
      for (k in seq(1:nrow(gower_mat))[!(seq(1:nrow(gower_mat)) %in% j)]) {
        if ((gower_mat[i, j] > gower_mat[i, k] + gower_mat[k, j]) ||
            (gower_mat[i, k] > gower_mat[i, j] + gower_mat[j, k]) ||
            (gower_mat[j, k] > gower_mat[j, i] + gower_mat[i, k])) {
          return(FALSE) 
        }
      }
    }
  }
  return(TRUE) 
}