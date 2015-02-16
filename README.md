## To use this

1. Clone

2. Run 'bundle install'

3. Set up the PhantomJS browser driver according to the instructions
   at: https://github.com/RubySandbox/HowToWatir (Basically download
   the binary from https://github.com/eugene1g/phantomjs/releases and
   put it in /usr/local/bin/phantomjs)

4. Run the example text (checks the title on google.com is 'Google'):
   rake spec:test_all
