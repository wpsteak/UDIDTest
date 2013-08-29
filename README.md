UDIDTest
========

ASIdentifierManager

```Objective-C
	NSString *advertisingIdentifier = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];    
```
 
identifierForVendor

```Objective-C
    NSString *identifierForVendor = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
```    

identifier hashed from MAC Address

```Objective-C
    NSString *uniqueGlobalDeviceIdentifier = [[UIDevice currentDevice] uniqueGlobalDeviceIdentifier];
```
    
## screenshot ##
<img src="https://raw.github.com/wpsteak/UDIDTest/master/screenshot.png" alt="Screenshot" style="width:320px;" />
