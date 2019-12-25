# Snappable_Isolate_Tests

Experimenting with different isolates and computation methods for the https://pub.dev/packages/snappable/

## Getting Started

In my_snappable.dart, on line 248, you can set `method` to 1, 2, 3, or 0 (default case).

Method 1 seems to be the fastest, largely because it doesn't use as much memory. Using 200 Buckets:
Method1: 300MB, 9 seconds
Method0 (original method with Isolate): 500MB and 48 seconds.

# Description of methods 

method1: syncronous, sequential, not using isolates.
method2: using parallel isolates, one isolate per bucket.
method3: using sequential isolates, one isolate per Bucket.
   // This is a dumb method but shows the overhead of isolates when compared to method1.
default: the existing method, which is one isolate.

# Results
Result: seems like method1 is the fastest method. It seems likely that the overhead of spawning isolates is high. Specifically, using Flutter Performance (android studio), method2 that used parallel isolates looked like memory usage spiked to almost 2GB. And this might have led to very slow memory management issues.

Recommendations: set method1 as the default and, allow people to choose what method based on a widget setting.

Also, if the snappable is an image with known dimensions, that can be scaled down and pre-processed.

