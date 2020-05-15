# Cold Start Benchmarker

Lightweight benchmarker for testing docker image "cold starts" like those on GCP's Cloud Run etc.

All the script does is measure how long it takes for the different images to start, run their command and exit.

## Usage

```sh
./build_images.sh
ruby benchmark.rb
```

It's recommended to clear the stopped containers after each run (for more accurate results).

You can also modify the `Dockerfile`'s to do more than just print "Hello world" if you wish.
