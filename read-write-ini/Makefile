test: parse.exe
test: test.ini
test: test.tmp.ini
	cmd /c parse.exe
	-diff -uw test.ini test.tmp.ini

test.tmp.ini:
	cp test.ini $@

parse.exe: parse.rb
	cmd /c ocra parse.rb

clean:
	rm -f parse.exe
	rm -f test.tmp.ini
