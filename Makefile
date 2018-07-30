

		
amd64:
		cp Dockerfile.cross Dockerfile.amd64
		sed -i "s|__BASEIMAGE_ARCH__|amd64|g" Dockerfile.amd64
		sed -i "s|__QEMU_ARCH__|x86_64|g" Dockerfile.amd64
		sed -i "/__CROSS_/d" Dockerfile.amd64
		docker build -f Dockerfile.amd64 -t $(REPO)/$(IMAGE_NAME):amd64 .
  		docker push $(REPO)/$(IMAGE_NAME):amd64

arm64v8:
		cp Dockerfile.cross Dockerfile.arm64v8
		sed -i "s|__BASEIMAGE_ARCH__|arm64v8|g" Dockerfile.arm64v8
		sed -i "s|__QEMU_ARCH__|aarch64|g" Dockerfile.arm64v8
		sed -i  "s/__CROSS_//g" Dockerfile.arm64v8
		wget https://github.com/multiarch/qemu-user-static/releases/download/v2.12.0/qemu-aarch64-static
		chmod 755 qemu-aarch64-static
		docker build --build-arg ARCH=arm32v8 --no-cache -f Dockerfile.arm64v8 -t $(REPO)/$(IMAGE_NAME):arm64v8 .
  		docker push $(REPO)/$(IMAGE_NAME):arm64v8

arm32v6:
		cp Dockerfile.cross Dockerfile.arm32v6
		sed -i "s|__BASEIMAGE_ARCH__|arm32v6|g" Dockerfile.arm32v6
		sed -i "s|__QEMU_ARCH__|arm|g" Dockerfile.arm32v6
		sed -i  "s/__CROSS_//g" Dockerfile.arm32v6
		wget https://github.com/multiarch/qemu-user-static/releases/download/v2.12.0/qemu-arm-static
		chmod 755 qemu-arm-static
		docker build --build-arg ARCH=arm32v6 --no-cache -f Dockerfile.arm32v6 -t $(REPO)/$(IMAGE_NAME):arm32v6 .
  		docker push $(REPO)/$(IMAGE_NAME):arm32v6
		
i386:
		cp Dockerfile.cross Dockerfile.i386
		sed -i "s|__BASEIMAGE_ARCH__|i386|g" Dockerfile.i386
		sed -i "s|__QEMU_ARCH__|i386|g" Dockerfile.i386
		sed -i  "s/__CROSS_//g" Dockerfile.i386
		wget https://github.com/multiarch/qemu-user-static/releases/download/v2.12.0/qemu-i386-static
		chmod 755 qemu-i386-static
		docker build --build-arg ARCH=i386 --no-cache -f Dockerfile.i386 -t $(REPO)/$(IMAGE_NAME):i386 .
  		docker push $(REPO)/$(IMAGE_NAME):i386	

ppc64le:
		cp Dockerfile.cross Dockerfile.ppc64le
		sed -i "s|__BASEIMAGE_ARCH__|ppc64le|g" Dockerfile.ppc64le
		sed -i "s|__QEMU_ARCH__|ppc64le|g" Dockerfile.ppc64le
		sed -i  "s/__CROSS_//g" Dockerfile.ppc64le
		wget https://github.com/multiarch/qemu-user-static/releases/download/v2.12.0/qemu-ppc64le-static
		chmod 755 qemu-ppc64le-static
		docker build --build-arg ARCH=ppc64le --no-cache -f Dockerfile.ppc64le -t $(REPO)/$(IMAGE_NAME):ppc64le .
  		docker push $(REPO)/$(IMAGE_NAME):ppc64le
		
s390x:
		cp Dockerfile.cross Dockerfile.s390x
		sed -i "s|__BASEIMAGE_ARCH__|s390x|g" Dockerfile.s390x
		sed -i "s|__QEMU_ARCH__|s390x|g" Dockerfile.s390x
		sed -i  "s/__CROSS_//g" Dockerfile.s390x
		wget https://github.com/multiarch/qemu-user-static/releases/download/v2.12.0/qemu-s390x-static
		chmod 755 qemu-s390x-static
		docker build --build-arg ARCH=s390x --no-cache -f Dockerfile.s390x -t $(REPO)/$(IMAGE_NAME):s390x .
  		docker push $(REPO)/$(IMAGE_NAME):s390x
