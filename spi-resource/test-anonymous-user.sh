#!/usr/bin/env bash

# ====================================================================================================================
# Vars
# ====================================================================================================================

PORT=8088;
REALM=placeholder;

# ====================================================================================================================
# Get a specific user from our custom resource
# ====================================================================================================================

USER="james"
#USER="jennifer"
#USER="john"
#USER="mary"
#USER="patricia"
#USER="robert"

curl "http://localhost:$PORT/auth/realms/$REALM/custom/users/$USER?auth_check_type=ANONYMOUS" | python -m json.tool;