if [[ $1 =~ cpp ]];then
	g++ -std=c++17 -O3 $1 -o output && echo "complete" && ./output
elif [[ $1 =~ c ]];then
	gcc $1 -o a.out && echo "complete" && ./a.out
elif [[ $1 =~ go ]];then
	go run $1
elif [[ $1 =~ py ]];then
	python3 $1
elif [[ $1 =~ sh ]];then
	bash $1
else
	echo $1
fi
