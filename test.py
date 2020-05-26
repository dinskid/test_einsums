import numpy as np

x = np.arange(480).reshape(2,3,4,5,4)

x = np.einsum('ijlml->ijlm', x)
x = np.transpose(x)