## -----------------------------------------------------------------------------
library(ipADMIXTURE)
# # running area: ipADMIXTURE::human27pop_Qmat[[i]] is a Q matrix with K=i+1
h27pop_obj<-ipADMIXTURE(Qmat=ipADMIXTURE::human27pop_Qmat[[11]], admixRatioThs =0.15)

## -----------------------------------------------------------------------------
ipADMIXTURE::printClustersFromLabels(h27pop_obj,human27pop_labels)

## -----------------------------------------------------------------------------
ipADMIXTURE::plotAdmixClusters(h27pop_obj)

## -----------------------------------------------------------------------------
ipADMIXTURE::plotClusterLeaves(h27pop_obj)

## -----------------------------------------------------------------------------
out<-ipADMIXTURE::getPhyloTree(human27pop_Qmat,h27pop_obj$indexClsVec)
plot(out$tree, type = "unrooted")

