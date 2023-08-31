### Build Plumber docker image, and log errors

docker build . -f Dockerfile.plumber --progress=plain &> build.log