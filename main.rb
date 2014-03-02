

  # UniqueID - Returns a UniqueID for the secure package
  class UniqueID 
    attr_accessor(:value)
    def create()
      return "1234"
    end
  end

  # TimeStamp = Returns the TimeStamp in (%Y-%m-%d) format
  class TimeStamp
    attr_accessor(:value)
    def create()
      time =  Time.now
      time = time.strftime("%Y-%m-%d %H:%M:%S")
      #time = DateTime.parse(time).strftime("%d/%m/%Y %H:%M")
      return time
    end
  end

  # Number of Decryptions
  class AllowedDecryptions
    def create()
        return "10000"
    end
  end

  # Data
  class AGData
    attr_accessor(:value, :datacount, :key, :keycount, :columnlen, :rowlen, :encryptedData)
    def initialize(aData)
      @value = aData
    end
    def encrypt()
      # remove spaces from string to create the package
      @value = "#{value}".delete(" ")    
      # Get the key letter count
      @keycount = key.to_s.tr("\n","").delete(" ").length  
      # Get the package letter count
      @datacount = @value.to_s.tr("\n","").delete(" ").length
      # Define the matrix (divide package word count by key word count)
      @columnlen = @keycount
      @rowlen = @datacount / @keycount
      

      # puts "\n\nEncrypt this phrase with a columnar cipher : Mary had a little lamb"
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
         # puts "\nInto This: #{encryptedArray.join()}\n\n"
         @encryptedData = encryptedArray.join()
      
    end
    
  end

#Get the data to encrypt
print "\n"
print "------------------------------------------\n"
print "-                                        -\n"
print "-                                        -\n"
print "-       Welcome to Secure Package        -\n"
print "-                                        -\n"
print "-                                        -\n"
print "------------------------------------------\n"
print "\n"


print "Please type the data to encrypt: "
userdata = gets()

packetID = UniqueID.new()
timeNow = TimeStamp.new()
allowedDec = AllowedDecryptions.new()
data = AGData.new(userdata)
print "Enter the key: "
data.key = gets()
print "\n"


print "------------------------------------------\n"
print "-             Create Package             -\n"
print "------------------------------------------\n"
data.encrypt()

print "\n"
print "UniqueID #{packetID.create()}"
print "\n"
print "TimeStamp #{timeNow.create()}"
print "\n"
print "Allowed Decryptions: #{allowedDec.create()}"
print "\n"
print "Data to encrypt: #{data.value}"
print "Data Count: #{data.datacount}"
print "\n"
print "Key: #{data.key}"
print "Key Count: #{data.keycount}"
print "\n"
print "Data Count: #{data.datacount}"
print "\n"
print "Column Length: #{data.columnlen}"
print "\n"
print "Row Length: #{data.rowlen}"
print "\n"
print "Encrypted Data: #{data.encryptedData}"
print "\n\n"
print "...Still creating the package\n\n"









