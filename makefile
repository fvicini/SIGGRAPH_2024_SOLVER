MainTest=siggraph_2024_solver

.PHONY: create-siggraph_2024_solver distclean-siggraph_2024_solver create distclean clean run run-bash run-bash-siggraph_2024_solver

## Clean
clean:
	@sudo docker container prune
	@sudo docker rmi $$(sudo docker images --filter "dangling=true" -q --no-trunc)

## Create
create:
	@make create-$(MainTest)

create-siggraph_2024_solver:
	sudo docker build -f Dockerfile --target siggraph_2024_solver . -t siggraph_2024_solver:1.0.0

## Run
run:
	@make run-$(MainTest)

run-siggraph_2024_solver:
	@sudo docker run --rm -d -it -v /home/geoscore/Desktop/GEO++/SIGGRAPH_2024_SOLVER/results:/shared siggraph_2024_solver:1.0.0 /bin/bash -c "./VEM_2D_SOLVER MeshGenerator:uint=0 ExportFolder:string=/shared/Run ComputeConditionNumber:bool=1 ProgramType:uint=0"
	#@sudo docker run --rm -it siggraph_2024_solver:1.0.0

run-bash:
	@make run-bash-$(MainTest)

run-bash-siggraph_2024_solver:
	@sudo docker run --rm -it siggraph_2024_solver:1.0.0 bash
	
## Distclean
distclean:
	@make distclean-$(MainTest)

distclean-siggraph_2024_solver:
	@sudo docker container prune
	@sudo docker rmi siggraph_2024_solver:1.0.0
	@sudo docker rmi $$(sudo docker images --filter "dangling=true" -q --no-trunc)
	@sudo docker buildx prune -f
