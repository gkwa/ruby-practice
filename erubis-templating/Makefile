RM=rm

test: example1.exe
	$<

example1.exe: example1.rb
	cmd /c ocra $<

gem:
	cmd /c bundle install

clean:
	$(RM) -f example1.exe