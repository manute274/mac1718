--
integral f a b t = sum[f a|x<-[a,a+t..b-t]]