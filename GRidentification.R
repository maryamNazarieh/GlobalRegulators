#Author : Maryam Nazarieh
ESC_set = c()
for(i in 1:dim(exp.data)[1]){
  S = 0
  if(exp.data[i,3] < exp.data[i,2] & exp.data[i,4] < exp.data[i,2] & exp.data[i,5] < exp.data[i,2] & exp.data[i,6] < exp.data[i,2] & exp.data[i,7] < exp.data[i,2]){
    if(exp.data[i,4] < exp.data[i,3])
      S = S + 1
    if(exp.data[i,5] < exp.data[i,4])
      S = S + 1
    if(exp.data[i,6] < exp.data[i,5])
      S = S + 1
    if(exp.data[i,7] < exp.data[i,6])
      S = S + 1
  }
  if(S > 2){
    #print(exp.data[i,1])
    ESC_set = c(ESC_set,as.character(exp.data[i,1]))
  }
}

MES_set = c()
for(i in 1:dim(exp.data)[1]){
  S = 0
  if(exp.data[i,3] > exp.data[i,2]){ 
    if(exp.data[i,4] < exp.data[i,3])
      S = S + 1
    if(exp.data[i,5] < exp.data[i,4])
      S = S + 1
    if(exp.data[i,6] < exp.data[i,5])
      S = S + 1
    if(exp.data[i,7] < exp.data[i,6])
      S = S + 1
  }
  if(S > 2)
    MES_set = c(MES_set,as.character(exp.data[i,1]))
}

HB_set = c()
for(i in 1:dim(exp.data)[1]){
  S = 0
  if(exp.data[i,4] > exp.data[i,3] & exp.data[i,4] > exp.data[i,2]){ 
    if(exp.data[i,2] < exp.data[i,3])
      S = S + 1
    if(exp.data[i,5] < exp.data[i,4])
      S = S + 1
    if(exp.data[i,6] < exp.data[i,5])
      S = S + 1
    if(exp.data[i,7] < exp.data[i,6])
      S = S + 1
  }
  if(S > 2)
    HB_set = c(HB_set,as.character(exp.data[i,1]))
}

HE_set = c()
for(i in 1:dim(exp.data)[1]){
  S = 0
  if(exp.data[i,5] > exp.data[i,2] & exp.data[i,5] > exp.data[i,3]  & exp.data[i,5] > exp.data[i,4]){ 
    if(exp.data[i,2] < exp.data[i,3])
      S = S + 1
    if(exp.data[i,3] < exp.data[i,4])
      S = S + 1
    if(exp.data[i,6] < exp.data[i,5])
      S = S + 1
    if(exp.data[i,7] < exp.data[i,6])
      S = S + 1
  }
  if(S > 2)
    HE_set = c(HE_set,as.character(exp.data[i,1]))
}

HP_set = c()
for(i in 1:dim(exp.data)[1]){
  S = 0
  if(exp.data[i,6] > exp.data[i,2] & exp.data[i,6] > exp.data[i,3]  & exp.data[i,6] > exp.data[i,4] & exp.data[i,6] > exp.data[i,5]){ 
    if(exp.data[i,2] < exp.data[i,3])
      S = S + 1
    if(exp.data[i,3] < exp.data[i,4])
      S = S + 1
    if(exp.data[i,4] < exp.data[i,5])
      S = S + 1
    if(exp.data[i,7] < exp.data[i,6])
      S = S + 1
  }
  if(S > 2)
    HP_set = c(HP_set,as.character(exp.data[i,1]))
}

MAC_set = c()
for(i in 1:dim(exp.data)[1]){
  S = 0
  if(exp.data[i,7] > exp.data[i,2] & exp.data[i,7] > exp.data[i,3]  & exp.data[i,7] > exp.data[i,4] & exp.data[i,7] > exp.data[i,5] & exp.data[i,7] > exp.data[i,6]){ 
    if(exp.data[i,2] < exp.data[i,3])
      S = S + 1
    if(exp.data[i,3] < exp.data[i,4])
      S = S + 1
    if(exp.data[i,4] < exp.data[i,5])
      S = S + 1
    if(exp.data[i,5] < exp.data[i,6])
      S = S + 1
  }
  if(S > 2)
    MAC_set = c(MAC_set,as.character(exp.data[i,1]))
}
length(ESC_set)
length(MES_set)
length(HB_set)
length(HE_set)
length(HP_set)
length(MAC_set)
