for item in `ls`

do

fileName=`echo $item|awk -F. '{print $1}'`
fileExt=`echo $item|awk -F. '{print $2}'`

if[-d $fileName]
then
echo "inside if condition..."
fi

mkdir -p $fileName/$fileExt

mv $item $fileName/$fileExt

done
