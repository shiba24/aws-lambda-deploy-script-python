# aws-lambda-deploy-python-package
Script to deploy python functions into AWS lambda.
---


# All you need to do


1. Modify `requirements.txt`: Required libraries for your lambda function.


2. Modify `lambda_function.py`: This is actual function gets input from trigger.


3. Run `bash deploy_package.sh`


4. Uploading `deploy_package.zip` to your lambda/S3 server


# Notice

## Compile

If requirements include `numpy` or something that needs to be compiled, we should compile them on the same Operating System. i.e., You need to run another instance to do compile, if you use macOS or Windows personally!


## No Numpy

If requirements do NOT include `numpy`, please comment out Line 31-33 in [deploy_package.sh](https://github.com/shiba24/aws-lambda-deploy-script-python/blob/master/deploy_package.sh).


# LICENSE and author

MIT License. Written by [@shiba24](https://github.com/shiba24).
