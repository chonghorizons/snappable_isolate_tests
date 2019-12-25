# Snappable_Isolate_Tests

Experimenting with different isolates and computation methods for the https://pub.dev/packages/snappable/

## Getting Started

In my_snappable.dart, on line 248, you can set `method` to 1, 2, 3, or 0 (default case).

Method 1 seems to be the fastest, largely because it doesn't use as much memory. Using 200 Buckets:
Method1: 300MB, 9 seconds
Method0 (original method with Isolate): 500MB and 48 seconds.

Description of methods 
