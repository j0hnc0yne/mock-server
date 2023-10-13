img_name=p33-mocks
registry_alias=v5u7h8c7
repo_name=p33-strong-start

# docker build -t ${img_name} .
docker buildx build --platform linux/amd64,linux/arm64 --push -t public.ecr.aws/${registry_alias}/${repo_name}  .


# docker tag ${img_name}:latest public.ecr.aws/${registry_alias}/${repo_name}
# docker push public.ecr.aws/${registry_alias}/${repo_name}


# https://gallery.ecr.aws/v5u7h8c7/p33-strong-start

# aws ecr-public create-repository \
#      --repository-name p33-strong-start \
#      --catalog-data file://repo.json \
#      --region us-east-1

#      {
#     "repository": {
#         "repositoryArn": "arn:aws:ecr-public::777707339174:repository/p33-strong-start",
#         "registryId": "777707339174",
#         "repositoryName": "p33-strong-start",
#         "repositoryUri": "public.ecr.aws/v5u7h8c7/p33-strong-start",
#         "createdAt": "2023-10-12T22:27:58.900000-05:00"
#     },
#     "catalogData": {
#         "description": "This is a test repo for an Amazon ECR tutorial.",
#         "architectures": [
#             "x86"
#         ],
#         "operatingSystems": [
#             "Linux"
#         ],
#         "aboutText": "This repository is used as a tutorial only.",
#         "usageText": "This repository is not for public use."
#     }
# }