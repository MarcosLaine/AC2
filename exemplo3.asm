#t0 = (s1 < s2) ? 1 : 0

slt t0, s1, s2        #  |
                      #  | >=
beq t0, zero, label   #  |

slt t0, s1, s2
bne t0, zero, label