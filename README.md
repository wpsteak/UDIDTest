UDIDTest
========

ASIdentifierManager

``` objc
NSString *advertisingIdentifier = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];    
```
 
identifierForVendor

``` objc
    NSString *identifierForVendor = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
```    

identifier hashed from MAC Address

``` objc
    NSString *uniqueGlobalDeviceIdentifier = [[UIDevice currentDevice] uniqueGlobalDeviceIdentifier];
```
    
## screenshot ##
<img src="https://raw.github.com/wpsteak/UDIDTest/master/screenshot.png" alt="Screenshot" style="width:320px;" />
