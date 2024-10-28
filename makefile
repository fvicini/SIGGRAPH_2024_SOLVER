MainTest=siggraph_2024_solver

.PHONY: create-siggraph_2024_solver distclean-siggraph_2024_solver create distclean clean run run-bash run-bash-siggraph_2024_solver

## Clean
clean:
	@docker container prune
	@docker rmi $$(docker images --filter "dangling=true" -q --no-trunc)

## Create
create:
	@docker build -f Dockerfile --target siggraph_2024_solver . -t siggraph_2024_solver:1.0.0

## Run
run:
	@make run-$(MainTest)

run-siggraph_2024_solver:
	@docker run --rm -d -it -v ./simulations:/shared siggraph_2024_solver:1.0.0 /bin/bash -c "./VEM_2D_SOLVER MeshGenerator:uint=1 MeshOFF_Aggregated_FilePath:string=/shared/meshes/mesh.off ExportFolder:string=/shared/Run ComputeConditionNumber:bool=1 ProgramType:uint=0"

run-bash:
	@make run-bash-$(MainTest)

run-bash-siggraph_2024_solver:
	@docker run --rm -it -v ./simulations:/shared siggraph_2024_solver:1.0.0 /bin/bash
	
## Distclean
distclean:
	@docker container prune
	@docker rmi siggraph_2024_solver:1.0.0
	@docker rmi $$(docker images --filter "dangling=true" -q --no-trunc)
	@docker buildx prune -f
