import kMeans
from numpy import *

# 导入txt数据
datMat = mat(kMeans.loadDataSet('data2.txt')) 

# datMat矩阵的第2-4列分别对应半长轴、偏心率和轨道倾角
datMat[0,2:5]

# 计算距离
delta_v = kMeans.distdeltaV(datMat[0,2:5],datMat[1,2:5])

# 随机生成k个质心
centroids = kMeans.randCent(datMat[:,2:5], 4)

# k-均值聚类
myCentroids, clustAssing = kMeans.kMeans(datMat[:,2:5], 5, kMeans.distdeltaV) 

# 二分 k-均值聚类
centList, myNewAssments = kMeans.biKmeans(datMat[:,2:5], 5, kMeans.distdeltaV)

# 画图
kMeans.showCluster_SRQ(datMat[:,2:5],myNewAssments)
