# Minimal Docker image

A minimal docker image one could ever build which, once started, just prints two lines of texts and then exits, it doesn't depend on anything except the kernel(thus minimal).

Commands(super user privilege is assumed):
	
	./build.sh build   # build the docker image
	./build.sh run     # run the container
	./build.sh restart # start the container again so text will be printed again
	./build.sh clean   # removes the container and image


