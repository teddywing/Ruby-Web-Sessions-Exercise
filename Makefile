run:
	bundle exec rerun 'ruby app.rb'

pack:
	zip -r session-exercise.zip . --exclude '.bundle/*' '.git/*' .gitignore 'vendor/*'

clean:
	rm -f session-exercise.zip
