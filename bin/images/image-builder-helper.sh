#!/bin/bash

function doTagByApplicationName()
{
    local applicationName=$1
    local imageName=$2
    local applicationPrefix=$(echo "$applicationName" | tr '[:upper:]' '[:lower:]')

    docker tag ${imageName} ${imageName}-${applicationPrefix}

    echo -e "${INFO}Image for ${applicationName} application was created: ${imageName}-${applicationPrefix}${NC}"
}

export doTagByApplicationName
