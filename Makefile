# make help
# @ surpresses the output of the line
help:
	@make -qp | awk -F':' '/^[a-zA-Z0-9][^$$#\/\t=]*:([^=]|$$)/ {split($$1,A,/ /);for(i in A)print A[i]}'

# Original is in github-flow

# raw to commandline execute
# make -qp | awk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}' 

clean:
	./gradlew clean

compile:
	./gradlew compileJava

jar:
	./gradlew assemble

all:
	./gradlew clean build 

# Generate the javadoc in 
#	$build/docs/javadoc/
docs:
	./gradlew javadoc
		
gradle-help:
	./gradlew -q tasks
