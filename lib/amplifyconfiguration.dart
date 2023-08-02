const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "analytics": {
        "plugins": {
            "awsPinpointAnalyticsPlugin": {
                "pinpointAnalytics": {
                    "appId": "e34579073dfb44a79c8358a9e8b4597d",
                    "region": "ap-southeast-2"
                },
                "pinpointTargeting": {
                    "region": "ap-southeast-2"
                }
            }
        }
    },
    "notifications": {
        "plugins": {
            "awsPinpointPushNotificationsPlugin": {
                "appId": "e34579073dfb44a79c8358a9e8b4597d",
                "region": "ap-southeast-2"
            }
        }
    },
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "thecrohns": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://bta5o22fxjdgpbplwxwxr42u2q.appsync-api.ap-southeast-2.amazonaws.com/graphql",
                    "region": "ap-southeast-2",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-q4lpx4pt5vbkbj2r6j2uv6mny4"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "PinpointAnalytics": {
                    "Default": {
                        "AppId": "e34579073dfb44a79c8358a9e8b4597d",
                        "Region": "ap-southeast-2"
                    }
                },
                "PinpointTargeting": {
                    "Default": {
                        "Region": "ap-southeast-2"
                    }
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://bta5o22fxjdgpbplwxwxr42u2q.appsync-api.ap-southeast-2.amazonaws.com/graphql",
                        "Region": "ap-southeast-2",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-q4lpx4pt5vbkbj2r6j2uv6mny4",
                        "ClientDatabasePrefix": "thecrohns_API_KEY"
                    },
                    "thecrohns_AWS_IAM": {
                        "ApiUrl": "https://bta5o22fxjdgpbplwxwxr42u2q.appsync-api.ap-southeast-2.amazonaws.com/graphql",
                        "Region": "ap-southeast-2",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "thecrohns_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "ap-southeast-2:4b02011e-d13d-4c11-bf8d-86c7cb7fc1cd",
                            "Region": "ap-southeast-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "ap-southeast-2_LmHsbkpKr",
                        "AppClientId": "481i875jh84u6qo6vosbbm7eij",
                        "Region": "ap-southeast-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "socialProviders": [],
                        "usernameAttributes": [
                            "EMAIL"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "thecrohns018c16753d65490eaf703424c087ef75181636-dev",
                        "Region": "ap-southeast-2"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "thecrohns018c16753d65490eaf703424c087ef75181636-dev",
                "region": "ap-southeast-2",
                "defaultAccessLevel": "guest"
            }
        }
    }
}''';