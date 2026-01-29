Before running the program, it's recommended to precompile the `bits/stdc++.h` header for significantly faster compilation times.
```
sudo g++ -std=c++17 -O2 -Wall -Wextra -Wshadow -Wconversion -Wfloat-equal -Wcast-align -pedantic -Wno-sign-conversion -Wno-unused-result -Wshift-overflow=2 -Wlogical-op /usr/include/c++/15.2.1/x86_64-pc-linux-gnu/bits/stdc++.h
```
There is a chance that your `bits/stdc++.h` file is in different location, so be sure to check it with:
```
# Where main.cpp is a file that includes bits/stdc++.h
g++ -H main.cpp
```
