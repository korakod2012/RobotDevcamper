*** Settings ***
Library     RequestsLibrary
Library     Collections
#Library     MongoDBLibrary


Variables   common_config.yaml
Variables   configs/local/envconfig.yaml
Resource    ../keywords/common/common_keywords.robot