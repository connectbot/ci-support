This is the `adbd` built from `jb-dev` branch with cherry-picked support
for "`adb reverse`" as well as a backported patch to make sure port
selection with "`tcp:0`" still works.

[system/core/adb from jb-dev](
https://android.googlesource.com/platform/system/core/+log/jb-dev)
was used with the following cherry-picks from master:

```
pick e109d266c12c5f537d429ca4b892f2719e02c2da
pick c7993af64baec271a238646bc20aaa846866c4a9
pick 3608d832425ca3a6d00c4040f3bb979c5aa49899
pick fd96db17b7f07eb6615af01fd1908b74383bf04b
pick e82c2db05cae70a0490a1f84b7211ef42c329671
pick 2ca3e6b35f79136418ebc32fef57580698dbd045
pick 1b7a7e81195ff06a7482f81cb92b094bb3481cb1
pick 1dd55c53af264b24319d721281fe32c67c053120
pick 0d82fbf04d6db847cf598f370aa6986af794bd72
pick a5ad539cff9dba92650425b8bec79c071ef5993b
pick 1c45ee92e2372f3c552744823143fb093fdbda9d
pick 2264e7cfef6b1236a90a13b1d99abb4aadcb0b93
pick 252586941934d23073a8d167ec240b221062505f
```

Additionally the patch `adbd-tcp-0.patch` was added after the cherry-picks.
