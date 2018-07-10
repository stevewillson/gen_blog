
# Need to have the same Blog locations as the gen_blog.sh file
# Blog locations
OUTPUT_DIR=/home/user/blog/output
BASE_DIR=/home/user/blog
WEBSERVER_DIR=/var/www/html

blog:
	./gen_blog.sh

publish_blog:
	cp -r $(OUTPUT_DIR)/* $(WEBSERVER_DIR)

clean:
	rm -rf $(OUTPUT_DIR)
	rm -rf $(BASE_DIR)/*
	#rm -rf $(BASE_DIR)/file_info.log
	#rm -rf $(BASE_DIR)/sort_file.log


