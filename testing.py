from minio import Minio


minioClient = Minio(
    'localhost:9000',
    access_key='minio',
    secret_key='minio-pass',
    secure=False
)


buckets = minioClient.list_buckets()
for bucket in buckets:
        print(dir(bucket))
        print(bucket.name)