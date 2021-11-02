# test-friendr


# 1. 
Push navigation is adding new view controller to the navigation stack. It means that view controller that initiated this push is part of the same navigation controller as pushed view controller. Modal navigation is when one view controller presents another controller modally. First controller is considering as parent of presented controller.

# 2. 
UserDefaults: we can store simple data types here (Int, String, Bool and etc.), also not often modified data; for example, general app settings, not private.  We shouldn’t use UserDefaults for storing login and password, authorization tokens.
 Keychain: for storing private data (login and password, authorization tokens)
CoreData: we should use it for storing a big data, for example, for application offline mode. 

# 3.
We should add [weak self] to avoid retain cycle.

# 4.
Protocol oriented programming means that we start with protocols instead of classes. And if we need to realize different functionality, we should use composition (add protocol compliance via extension) instead of creating helper classes (additional classes in inheritance hierarchy).
