cdr=$(pwd)
name=$1
if [ $name != '' ]
then
	cd $cdr
	echo "# settings" >> README.md
	git init
	git add .
	git commit -m "first commit"
	git branch -M main
	git remote add origin https://github.com/you-bowen/$1.git
	git push -u origin main
else
	echo "repo name needed"
	sleep 1
fi