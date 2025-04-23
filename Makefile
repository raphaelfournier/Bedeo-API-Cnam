html:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve

production:
	bundle exec jekyll build --config=_config.yml,_config-lepoulpe.yml 

clean:
	rm -rf _site/*

upload:
	echo "uploading..."
	./upload.sh

