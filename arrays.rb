
puts "\n\nEncrypt this phrase with a columnar cipher : Mary had a little lamb"
transposeThis = ["maryha","dalitt","lelamb"] 
encryptedArray = ["---","---","---","---","---","---"] 
xCTR = 0
iCTR = 0 
encryptedData = ""
keylength = 6
transposeThis.each {|x|
   iCTR = 0
  until iCTR == keylength do 
    encryptedArray[iCTR][xCTR] = x[iCTR]
    iCTR +=1
  end
    xCTR += 1
  }
   # print "\n\n#{encryptedArray.to_s}\n\n"
   puts "\nInto This: #{encryptedArray.join()}\n\n"
  