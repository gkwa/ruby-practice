
D:\pdev\ruby-practice\edit-json>ocra edit_state.rb --console --output update_chrome_settings.exe 
/usr/share/rubygems/rubygems/dependency.rb:315:in `to_specs': Could not find 'ocra' (>= 0) among 9 total gem(s) (Gem::LoadError)
Checked in 'GEM_PATH=/home/Administrator/.gem/ruby:/usr/share/gems:/usr/local/share/gems', execute `gem env` for more information
	from /usr/share/rubygems/rubygems/dependency.rb:324:in `to_spec'
	from /usr/share/rubygems/rubygems/core_ext/kernel_gem.rb:64:in `gem'
	from C:\bin\ruby193\bin\ocra:22:in `<main>'
Makefile:8: recipe for target 'update_chrome_settings.exe' failed
make: *** [update_chrome_settings.exe] Error 1
[Administrator@T1:/d/pdev/ruby-practice/edit-json(editjson)]$ 













Install ruby on windows 2012 x64:
rem No! ruby 2.1 fails with ocra: choco install ruby --forcex86 --yes
choco install ruby1.9 --forcex86 --yes

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

Ruby commandline parameters
http://stackoverflow.com/a/4248426/1495086

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
