UDIDTest
========

###compare ASIdentifierManager, identifierForVendor and identifier hashed form MAC address for iOS 6+

### why I create this project?

[https://developer.apple.com/news/?id=8222013a](https://developer.apple.com/news/?id=8222013a)

> If your apps use the MAC address to identify an iOS device, the system will return the same static value for all devices running iOS 7. Please update your apps to use the identifierForVendor property of UIDevice. If you need an identifier for advertising purposes, use the advertisingIdentifier property of ASIdentifierManager.

Because MAC address will return the same value to all devices in iOS7,
so I create this project to compare ASIdentifierManager , identifierForVendor and identifier hashed from MAC Address these three method's beheaver in iOS6+.


###ASIdentifierManager

``` objc
NSString *advertisingIdentifier = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];    
```
 
###identifierForVendor

``` objc
    NSString *identifierForVendor = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
```    

###identifier hashed from MAC Address

``` objc
    NSString *uniqueGlobalDeviceIdentifier = [[UIDevice currentDevice] uniqueGlobalDeviceIdentifier];
```
    
### screenshot ##
<img src="https://raw.github.com/wpsteak/UDIDTest/master/screenshot.png" alt="Screenshot" style="width:320px;" />
