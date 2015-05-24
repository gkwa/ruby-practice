Makefile has spaces:
http://stackoverflow.com/a/23849694/1495086

Ruby edit json:
http://stackoverflow.com/a/6534690/1495086

Ruby load json file
https://hackhands.com/ruby-read-json-file-hash

Minimal Gemfile
http://railsapps.github.io/rails-3-2-example-gemfile.html

Ruby check string nil or empty
http://stackoverflow.com/a/251644/1495086


```
make clean test
```

Should output something like this:
```
diff -uw local_state.pretty.before-edit local_state.pretty.after-edit
--- local_state.pretty.before-edit	2015-05-23 17:44:33.000000000 -0700
+++ local_state.pretty.after-edit	2015-05-23 17:44:33.000000000 -0700
@@ -1,5 +1,8 @@
 {
     "browser": {
+        "enabled_labs_experiments": [
+            "enhanced-bookmarks-experiment@2"
+        ],
         "hung_plugin_detect_freq": 2000,
         "plugin_message_response_timeout": 25000
     },
make: [test] Error 1 (ignored)
```
