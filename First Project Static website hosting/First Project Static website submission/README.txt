DEPLOY STATIC WEBSITE ON AWS
Web Browser Access
* Access the bucket object via its S3 object URL: http://sillians-651795520604-bucket.s3-us-west-1.amazonaws.com/index.html


* Domain Name value : https://dhbfxxpdcnydt.cloudfront.net


* Access the website via website-endpoint : http://sillians-651795520604-bucket.s3-website-us-west-1.amazonaws.com/






Website Files
1. The S3 bucket is visible in the AWS Management console.


  



2. The student has submitted a screenshot showing all the website files uploaded to the newly created S3 bucket.
  



3. The S3 bucket is configured to support static website hosting.
  

  



4. The bucket should allow public access. The S3 bucket has an IAM bucket policy that makes the bucket contents publicly accessible.
  



Website Distribution
1. CloudFront has been configured to retrieve and distribute website files.
  



Web Browser Access
1. Access to the website using the CloudFront domain name URL
  

2. Access to the website using the S3 object URL