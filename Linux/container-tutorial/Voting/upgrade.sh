#!/bin/bash

sfctl application upload --path Voting2 --show-progress
sfctl application provision --application-type-build-path Voting2

sfctl application upgrade --application-name fabric:/Voting --application-version 2.0.0 --parameters "{}" --mode Monitored

# sfctl application upgrade-status --application-id Voting

# sfctl application delete --application-id Voting
# sfctl application unprovision --application-type-name VotingType --application-type-version 1.0.0
# sfctl store delete --content-path Voting