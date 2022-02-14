#bin/bash
docker run -p 8888:8888 --platform linux/amd64 -v $PWD:/workspace/semtorch semtorch ./run_jupyter.sh
