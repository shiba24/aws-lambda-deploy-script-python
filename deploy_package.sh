# move to this shell directory
# cd $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

# create virtualenv environment
pip install --user --upgrade pip
pip install --user virtualenv
virtualenv devapp
source devapp/bin/activate
cd devapp

cp ../requirements.txt ./

# install requirements
pip install --upgrade pip
pip install -r requirements.txt

# create zip file
cp ../lambda_function.py ./
if [ ! -e deploy_package.zip ]
then
    rm deploy_package.zip
fi
zip deploy_package.zip lambda_function.py

# for other packages than numpy
cd ./lib/python2.7/site-packages
zip ../../../deploy_package.zip -r .
cd ../../..

# only if numpy included
cd ./lib64/python2.7/site-packages
zip ../../../deploy_package.zip -r numpy*
cd ../../..

# directly upload to S3 / currently not working. please scp to your local machine.
# https://s3.amazonaws.com/HOGE/

# uploading commands (not working)
# pip install awscli
# export AWS_ACCESS_KEY_ID=
# export AWS_SECRET_ACCESS_KEY=
# export AWS_DEFAULT_REGION=
# export AWS_DEFAULT_OUTPUT=json
# aws s3 cp ./deploy_package.zip s3://.amazonaws.com/HOGE
