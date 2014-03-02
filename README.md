SecurePacket
============
THEME:
ALL DATA ‘AT REST’ WILL BE SECURE AND USAGE STATISTICS WILL MITIGATE RISK.

THESIS:
A MECHANISM FOR TRACKING STATISTICS ABOUT ENCRYPTED DATA PACKETS VARIOUS STATES CAN BE USED TO INFORM THE RECEIVER ABOUT THE PACKETS USAGE AFTER DECRYPTION. FOR EXAMPLE, SOME OF THESE STATISTICS COULD HELP PREDICT RISK FOR MISUSE OF THE DATA WHILE IN VARIOUS STATES.

The use-case could include a legal firm sharing data they only want available for a short period between their legal groups.

One decrypted security statistic could be date and time initially the packet was initially encrypted.
Another possible security statistic could be one that displays how often the encrypted packet was decrypted. This is similar to Linkedin’s viewed profile statistic. The receiver of the encrypted packet could decrypt and then view how often this specific data package has been decrypted.

To prove this thesis a Ruby application was designed to demonstrate encrypting a packet of data and decrypting it to show the security statistics. The application utilizes a regular columnar transposition type of cipher. When decrypted, various security statistics can be viewed. Every decryption to plaintext will increase the scalar count of [Views]. Furthermore, the transposition matrix will change and create a new encryption result of the same data but different security data. This is a rolling cipher concept that occurs at every decryption or encryption event. Also if the number of decryptions exceed the allowed decryptions, the package will not be decrypted.

Terminology: -Regular/Irregular Columnar Transposition: A common type of cipher used to prove this thesis. -Secure Package: An encrypted packet of data containing the secure statics of usage and the data. -Encrypted Data: Non-ciphered data. -Decrypted Data: Readable information. -Secure Package Statistics: For example, Date/Time first encrypted, Number of times decrypted, unique Secure Package Identifier.

Lets go through the steps to encrypt data with this cipher type:
  1.	First we need data to encrypt. Let’s use, “Mary had a little lamb white as snow.
  2.	Then prepare the data for encryption. 
    a. Create a unique identifier. 
    b. Time stamp the package. 
    c. Set number of allowed decryptions. 
    d. Standardize all letter case to upper or lower. 
    e. Secure Package format: 
    
    Format the data as follows: i. UniqueID [XXXX] ii. TimeStamp [MMDDYYYYHHMMSS] iii. Decryptions [XXXXX] iv. AllowedDecryptions [XXXXX] v. Data[“X…”]UniqueID[XXXX]TimeStamp[MMDDYYYYHHMMSS]Decryptions[XXXXX][Allowed Decryptions]Data[“X…”]



Author: Matt Ozvat

