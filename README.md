# MATLAB

## dd_check
Checks if a matrix is diagonally dominant. First, the dimensions of the input matrix are checked, which must be equal. Otherwise, an error message is returned. Also, in case the matrix is sparse, it becomes dense via "full". The variables "discrR" and "discrC" are then initialized as 'true', denoting the diagonal dominance of rows and columns respectively. The sums of each row and column are then calculated and stored in the variables "rs" and "cs" respectively. Each diagonal element is compared to the sum of the corresponding row and column to which it belongs, so as to check if the matrix is diagonally dominant, the values of the variables are updated and after the end of the loop the final values of the "dflag" variables are displayed. which shows us if the matrix is diagonally dominant, discrR and discrC. If the matrix is not diagonally dominant, only the variable dflag, which has the value 0, is displayed. 

## mask_band
This function takes the following variables as inputs:
"n", indicating the dimensions of the matrix,

"type", which can take 'band' or 'btdr' values,

"q", denoting the upper half,

"p", denoting the lower half. 


The output of the function is the "P" matrix. When the variable "type" gets the value 'band', the band matrix is ​​created. When it gets the value 'btdr', then, with the help of the functions 'floor' and 'rem', a diagonal matrix block is created and returned. This is done as follows: Initialize the matrix P with zero elements and dimensions n * n. Then, as the pronunciation states, if p does not exactly divide n, we will use the variable "k", which indicates the number of diagonal blocks that will have a dimension p * p. The variable "r" is used for the extra block of the diagonal, where it is its dimension. The intrinsic function "blkdiag" of MATLAB, helps us to create the matrix P. In case p divides exactly n, through "blkdiag" the matrix P is created, which has k diagonal blocks of dimensions p * p. 
