WEB_CONFIG ?= dockerizer-web/scripts/config.json
BACKEND_CONFIG ?= dockerizer-backend/scripts/config.json

.PHONY: install install-web install-backend

install: install-backend install-web

install-web:
	@echo "=== Installing dockerizer-web ==="
	cd dockerizer-web && sudo ./scripts/install.sh --config $(abspath $(WEB_CONFIG)) $(ARGS)

install-backend:
	@echo "=== Installing dockerizer-backend ==="
	cd dockerizer-backend && sudo ./scripts/install.sh --config $(abspath $(BACKEND_CONFIG)) $(ARGS)
