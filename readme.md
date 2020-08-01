Normalization is a common stage when dealing with floating point or fixed point rapresentation. A generic binary nomralized number M is 1/2 <= |M|, this lead to the fact that the MSB bit must be a one.
For many reasons in rapresentation (floating / fixed point) the MSB is in general the sign or a static bit, so is necessary to normalize the number with respect to the second MSB (or third). Due to the fact that sometimes a normalization to a specific bit is needed the generic normalization unit allows to select the bit to be normalized (on line 42, norma_bit, expressed as difference from N). This unit does not require any clock due to the fact that the normalization is performed through memories (LUT).