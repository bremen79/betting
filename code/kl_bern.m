function out=kl_bern(p,q)
out=p*log(p/q)+(1-p)*log((1-p)/(1-q))