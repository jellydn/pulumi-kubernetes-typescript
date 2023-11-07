.PHONY: install 
install:
	@echo "Installing dependencies..."
	npm install

.PHONY: dev 
dev:
	@echo "Deploying with Pulumi..."
	pulumi up

.PHONY: destroy
destroy:
	@echo "Destroying infrastructure with Pulumi..."
	pulumi destroy

.PHONE: clean
clean:
	@echo "Cleaning up..."
	pulumi stack rm kubernetes-typescript-dev
