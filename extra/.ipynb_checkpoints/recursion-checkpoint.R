dt = c(10, 21, 90, 100)

sm = function (dt, jami=0) {
  if(length(dt) < 1) {
    return(jami)
  }
  
  jami = jami+dt[1]
  return(sm(dt[-1], jami))
}


sm2 = function(dt) {
  if(length(dt) == 1) {
    return(dt[1])
  }
  
  return(dt[1] + sm2(dt[-1]))
}

sm2(dt)

l = c(1, 2, 3, 4)
ln = function(l) {
  if(l == c()) {
    return(0)
  }
  return(1 + ln(l[-1]))
}

ln(l)

search = function(arr, left, right, t) {
  if(left <= right) {
    mid = floor(left + (right-left)/2)
    if(arr[mid] == t) {
      return(mid)
    } else if(arr[mid] > t) {
      return(search(arr, left, mid-1, t))
    } else {
      return(search(arr, mid+1, right, t))
    }
  } else {
    return(-1)
  }
}

arr = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
search(arr, 0, length(arr)-1, 3)

bin_search = function(a, b, x) {
  if(x %in% a:b) {
    mid = floor(a + (b-a)/2)
    if(x==mid) {
      return(mid)
    } else if(x < mid) {
      return(bin_search(a, mid-1, x))
    } else {
      return(bin_search(mid+1, b, x))
    }
  } else {
    return(-1)
  }
}
bin_search(20, 40, 32)
