import numpy as np
import matplotlib.pyplot as plt

# Veri seti
x = np.array([1, 2, 3, 4, 5])
y = np.array([2.7, 7.4, 20.8, 54.6, 148.4])

# Logaritma dönüşümü (üstel model için)
x_log = np.log(x)

# Polinom regresyonu için, x_log'u 1. dereceden polinom terimleri oluştururuz.
# Burada x_log ve 1 sabiti terimlerini kullanarak model kuruyoruz.
X = np.vstack([np.ones(len(x_log)), x_log]).T

# Lineer regresyon: Y = X * β
# Burada β (beta) katsayılarını buluyoruz
# β = (X^T * X)^-1 * X^T * Y
beta = np.linalg.inv(X.T @ X) @ X.T @ y

# Tahmin yapma
y_pred = X @ beta

# Grafik oluşturma
plt.scatter(x, y, color='blue', label='Gerçek Veri')
plt.plot(x, y_pred, color='red', label='Üssel Regresyon Fit')
plt.xscale('linear')  # X eksenini lineer ölçekle
plt.yscale('linear')  # Y eksenini lineer ölçekle
plt.xlabel('X')
plt.ylabel('Y')
plt.title('Üssel Regresyon')
plt.legend()
plt.show()

print(f'β0 (sabit): {beta[0]}')
print(f'β1 (log(x) katsayısı): {beta[1]}')
